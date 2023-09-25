import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    static targets = ["timeDisplay"];

    connect() {
        this.nextDayTime = this.getNextDayTime();  // Initialisez l'heure du jour suivant lors de la connexion
        this.refreshTime();
    }

    getNextDayTime() {
        const now = new Date();
        let nextDay = new Date(now.getFullYear(), now.getMonth(), now.getDate(), 0, 1, 0); // Aujourd'hui à 10:36

        // Si le moment actuel est après 10:36, définissez la prochaine journée pour le lendemain
        if (now > nextDay) {
            nextDay.setDate(nextDay.getDate() + 1);
        }

        return nextDay;
    }

    refreshTime() {
        const now = new Date();
        const difference = this.nextDayTime - now;

        const hours = Math.floor((difference % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const minutes = Math.floor((difference % (1000 * 60 * 60)) / (1000 * 60));
        const seconds = Math.floor((difference % (1000 * 60)) / 1000);

        if (difference <= 0) {
            // Changez la méthode de rechargement de la page
            window.location.href = window.location.href;
        } else {
            this.timeDisplayTarget.innerText = `${hours}h ${minutes}m ${seconds}s`;
            setTimeout(() => {
                this.refreshTime();
            }, 1000); // Répétez chaque seconde
        }
    }
}
