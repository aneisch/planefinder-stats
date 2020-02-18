# planefinder-stats

Query [Plane Finder client](https://planefinder.net/sharing/client) and store stats in InfluxDB

The following data is retrieved from the /ajax/stats endpoint of the [Plane Finder client](https://planefinder.net/sharing/client):
```
{
  "executable_start_time": 1581968285.019631,
  "client_version": "4.1.14 armhf",
  "total_modes_packets": 10388550,
  "total_modes_packets_ps": 107,
  "prev_total_modes_packets": 0,
  "total_modeac_packets": 19834012,
  "total_modeac_packets_ps": 216,
  "prev_total_modeac_packets": 0,
  "master_server_bytes_out": 10129237,
  "prev_master_server_bytes_out": 0,
  "master_server_bytes_in": 1154324,
  "local_server_bytes_out": 8254370,
  "local_server_bytes_in": 1005924,
  "mlat_bytes_out": 0,
  "mlat_bytes_in": 0,
  "receiver_bytes_out": 28,
  "receiver_bytes_in": 506117460,
  "receiver_bytes_out_ps": 0,
  "receiver_bytes_in_ps": 5384,
  "total_modes_crc_bad": 21209203,
  "total_modes_crc_corrected": 0,
  "total_modes_types": {
    "0": 2160626,
    "4": 542864,
    "5": 14109,
    "11": 3373623,
    "16": 69819,
    "17": 4222106,
    "18": 1,
    "20": 5244,
    "21": 158
  }
}
```

### Environmental Variables
Variable | Default | Description
-- | -- | --
INFLUX_HOST | 10.0.1.22 | The server hosting influxdb
INFLUX_PORT | 8086 | Influxdb HTTP port
INFLUX_DATABASE | planefinder | Database which readings are written to
PLANEFINDER_HOST | 10.0.1.8 | Host which is running PlaneFinder client
PLANEFINDER_PORT | 80 | Web port of Plane Finder client
