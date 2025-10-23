# Baserow All-in-One Docker Image for Railway
# This is a simple wrapper around the official Baserow image
FROM baserow/baserow:latest

EXPOSE 80 443

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost/api/health/ || exit 1

# The image already has the startup script
CMD ["/baserow/supervisor/start_all_in_one.sh"]
