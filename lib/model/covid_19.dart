
class COVID19 {
    COVID19({
        this.date,
        this.states,
        this.positive,
        this.negative,
        this.pending,
        this.hospitalizedCurrently,
        this.hospitalizedCumulative,
        this.inIcuCurrently,
        this.inIcuCumulative,
        this.onVentilatorCurrently,
        this.onVentilatorCumulative,
        this.dateChecked,
        this.death,
        this.hospitalized,
        this.totalTestResults,
        this.lastModified,
        this.recovered,
        this.total,
        this.posNeg,
        this.deathIncrease,
        this.hospitalizedIncrease,
        this.negativeIncrease,
        this.positiveIncrease,
        this.totalTestResultsIncrease,
        this.hash,
    });

    DateTime? date;
    int? states;
    int? positive;
    int? negative;
    int? pending;
    int? hospitalizedCurrently;
    int? hospitalizedCumulative;
    int? inIcuCurrently;
    int? inIcuCumulative;
    int? onVentilatorCurrently;
    int? onVentilatorCumulative;
    String? dateChecked;
    int? death;
    int? hospitalized;
    int? totalTestResults;
    String? lastModified;
    int? recovered;
    int? total;
    int? posNeg;
    int? deathIncrease;
    int? hospitalizedIncrease;
    int? negativeIncrease;
    int? positiveIncrease;
    int? totalTestResultsIncrease;
    String? hash;

    COVID19 copyWith({
        DateTime? date,
        int? states,
        int? positive,
        int? negative,
        int? pending,
        int? hospitalizedCurrently,
        int? hospitalizedCumulative,
        int? inIcuCurrently,
        int? inIcuCumulative,
        int? onVentilatorCurrently,
        int? onVentilatorCumulative,
        String? dateChecked,
        int? death,
        int? hospitalized,
        int? totalTestResults,
        String? lastModified,
        int? recovered,
        int? total,
        int? posNeg,
        int? deathIncrease,
        int? hospitalizedIncrease,
        int? negativeIncrease,
        int? positiveIncrease,
        int? totalTestResultsIncrease,
        String? hash,
    }) => 
        COVID19(
            date: date ?? this.date,
            states: states ?? this.states,
            positive: positive ?? this.positive,
            negative: negative ?? this.negative,
            pending: pending ?? this.pending,
            hospitalizedCurrently: hospitalizedCurrently ?? this.hospitalizedCurrently,
            hospitalizedCumulative: hospitalizedCumulative ?? this.hospitalizedCumulative,
            inIcuCurrently: inIcuCurrently ?? this.inIcuCurrently,
            inIcuCumulative: inIcuCumulative ?? this.inIcuCumulative,
            onVentilatorCurrently: onVentilatorCurrently ?? this.onVentilatorCurrently,
            onVentilatorCumulative: onVentilatorCumulative ?? this.onVentilatorCumulative,
            dateChecked: dateChecked ?? this.dateChecked,
            death: death ?? this.death,
            hospitalized: hospitalized ?? this.hospitalized,
            totalTestResults: totalTestResults ?? this.totalTestResults,
            lastModified: lastModified ?? this.lastModified,
            recovered: recovered ?? this.recovered,
            total: total ?? this.total,
            posNeg: posNeg ?? this.posNeg,
            deathIncrease: deathIncrease ?? this.deathIncrease,
            hospitalizedIncrease: hospitalizedIncrease ?? this.hospitalizedIncrease,
            negativeIncrease: negativeIncrease ?? this.negativeIncrease,
            positiveIncrease: positiveIncrease ?? this.positiveIncrease,
            totalTestResultsIncrease: totalTestResultsIncrease ?? this.totalTestResultsIncrease,
            hash: hash ?? this.hash,
        );

    factory COVID19.fromJson(Map<String, dynamic> json) => COVID19(
        date: DateTime.tryParse('${json['date']}') ?? DateTime(0),
        states: json["states"]??0,
        positive: json["positive"] ?? 0,
        negative: json["negative"] ?? 0,
        pending: json["pending"] ?? 0,
        hospitalizedCurrently: json["hospitalizedCurrently"],
        hospitalizedCumulative: json["hospitalizedCumulative"],
        inIcuCurrently: json["inIcuCurrently"] ?? 0,
        inIcuCumulative: json["inIcuCumulative"],
        onVentilatorCurrently: json["onVentilatorCurrently"],
        onVentilatorCumulative: json["onVentilatorCumulative"],
        dateChecked: json["dateChecked"],
        death: json["death"] ?? 0,
        hospitalized: json["hospitalized"] ?? 0,
        totalTestResults: json["totalTestResults"],
        lastModified: json["lastModified"],
        recovered: json["recovered"] ?? 0,
        total: json["total"],
        posNeg: json["posNeg"],
        deathIncrease: json["deathIncrease"],
        hospitalizedIncrease: json["hospitalizedIncrease"],
        negativeIncrease: json["negativeIncrease"],
        positiveIncrease: json["positiveIncrease"],
        totalTestResultsIncrease: json["totalTestResultsIncrease"],
        hash: json["hash"],
    );

    // Map<String, dynamic> toJson() => {
    //     "date": date?.toIso8601String(),
    //     "states": states,
    //     "positive": positive,
    //     "negative": negative,
    //     "pending": pending,
    //     "hospitalizedCurrently": hospitalizedCurrently,
    //     "hospitalizedCumulative": hospitalizedCumulative,
    //     "inIcuCurrently": inIcuCurrently,
    //     "inIcuCumulative": inIcuCumulative,
    //     "onVentilatorCurrently": onVentilatorCurrently,
    //     "onVentilatorCumulative": onVentilatorCumulative,
    //     "dateChecked": dateChecked,
    //     "death": death,
    //     "hospitalized": hospitalized,
    //     "totalTestResults": totalTestResults,
    //     "lastModified": lastModified,
    //     "recovered": recovered,
    //     "total": total,
    //     "posNeg": posNeg,
    //     "deathIncrease": deathIncrease,
    //     "hospitalizedIncrease": hospitalizedIncrease,
    //     "negativeIncrease": negativeIncrease,
    //     "positiveIncrease": positiveIncrease,
    //     "totalTestResultsIncrease": totalTestResultsIncrease,
    //     "hash": hash,
    // };

}
