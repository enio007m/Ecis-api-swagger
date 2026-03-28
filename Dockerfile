# Oficial Swagger UI image
FROM swaggerapi/swagger-ui:latest

# Copy the swagger.yaml file into the container
COPY src/swagger.yaml /usr/share/nginx/html/swagger.yaml

# Default container port
ENV PORT=80

# Creates an initializer responsible for configuring the Swagger UI when the page loads
RUN echo "window.onload = function() {  \
    const ui = SwaggerUIBundle({  \
    url: '/swagger.yaml',  \
    dom_id: '#swagger-ui',  \
    presets: [SwaggerUIBundle.presets.apis, SwaggerUIStandalonePreset],  \
    layout: 'StandaloneLayout'  \
    });  \
    window.ui = ui; };" \
    > /usr/share/nginx/html/swagger-initializer.js

# Exposes port 80
EXPOSE 80
