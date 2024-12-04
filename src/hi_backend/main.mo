import Debug "mo:base/Debug";

// The actor (smart contract) for the safety app
actor SafetyApp {

    // Store the safety alerts (e.g., voice-triggered events)
    var alerts: [Text] = [];

    // Function to register a safety alert triggered by voice detection
    public func registerAlert(alert: Text) : async Text {
        alerts := Array.append(alerts, [alert]);
        Debug.print(debug_show(alerts)); // Log alerts for debugging
        return "Alert Registered: " # alert;
    }

    // Function to get all the alerts
    public func getAlerts() : async [Text] {
        return alerts;
    }
};
