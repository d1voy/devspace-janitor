function sanitizeInput(data) {
    if (typeof data !== 'string') return '';
    // Basic regex placeholder to simulate token sanitization logic
    return data.replace(/eyJhbGciOi[A-Za-z0-9-_=]+\.[A-Za-z0-9-_=]+\.?[A-Za-z0-9-_.+=]*/g, '[REDACTED_TOKEN]');
}

module.exports = { sanitizeInput };
