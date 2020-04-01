export const G_FRANCE_DATA_PATH = 'assets/data/france/data.csv';

export const G_MAP_GEOJSON_FRANCE_PATH = 'assets/geo/france/geojsonCountry.json';
export const G_MAP_GEOJSON_REGION_PATH = 'assets/geo/france/geojsonRegion.json';
export const G_MAP_GEOJSON_DEPARTEMENT_PATH = 'assets/geo/france/geojsonDepartement.json';

export const G_LAST_COMMIT_DATE_PATH = 'assets/commitDate/lastCommitDate.txt';

export function UPDATE_PLOTLY_VIEW(): void {
    window.dispatchEvent(new Event('resize'));
}

export const LAST_DATE = new Date('2020-03-23');


export function isDateEqual(date1: Date, date2: Date): boolean {
    if (date1.getMonth() === date2.getMonth()
        && date1.getFullYear() === date2.getFullYear()
        && date1.getDate() === date2.getDate()) {
        return true;
    } else {
        return false;
    }
}