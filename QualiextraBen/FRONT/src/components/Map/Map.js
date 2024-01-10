import { MapContainer, TileLayer, Marker, Popup,  } from 'react-leaflet';
const AnyReactComponent = ({ text }) => <div>{text}</div>;

export default function SimpleMap() {
  const position = [48.8566, 2.3522]; // Position de départ

  return (
    // Important! Always set the container height explicitly,,,,,box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    <div style={{ height: '100%', width: '100%', borderRadius: '1Rem', overflow: 'hidden', boxShadow: 'rgba(0, 0, 0, 0.35) 0px 5px 15px', border: '2px solid gray', backgroundColor: 'gray', opacity: '100%', backdropFilter: 'blur(30px)' }}>
      <MapContainer center={position} zoom={13} style={{ height: "100%", width: "100%" }}>
        <TileLayer
            url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            attribution='&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
        />
        <Marker position={position}>
          <Popup>
            Un popup exemple.
          </Popup>
        </Marker>
      </MapContainer>
    </div>
  );
}