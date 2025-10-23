# Baserow All-in-One Docker Image for Railway
# Uses the official pre-built Baserow all-in-one image
FROM baserow/baserow:1.35.3

# Expose HTTP and HTTPS ports
EXPOSE 80 443

# Health check to monitor container health
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

# Start Baserow services
CMD ["/baserow/supervisor/start_all_in_one.sh"]
