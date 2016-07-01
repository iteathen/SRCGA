.class final Ljava/time/format/SimpleDateTimeTextProvider;
.super Ljava/time/format/DateTimeTextProvider;
.source "SimpleDateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/SimpleDateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 73
    new-instance v0, Ljava/time/format/SimpleDateTimeTextProvider$1;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/time/format/SimpleDateTimeTextProvider$1;-><init>()V

    sput-object v0, Ljava/time/format/SimpleDateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeTextProvider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/format/DateTimeTextProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Ljava/time/format/SimpleDateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private static createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "text":Ljava/lang/Object;, "TA;"
    move-object v1, p1

    .local v1, "field":Ljava/lang/Object;, "TB;"
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/Object;, "TA;"
    return-object v0
.end method

.method private static createLocaleStore(Ljava/util/Map;)Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "valueTextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    move-object v1, v0

    sget-object v2, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    move-object v3, v0

    sget-object v4, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 294
    move-object v1, v0

    sget-object v2, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    move-object v3, v0

    sget-object v4, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 295
    move-object v1, v0

    sget-object v2, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    move-object v1, v0

    sget-object v2, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    move-object v3, v0

    sget-object v4, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 298
    :cond_0
    new-instance v1, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .end local v0    # "valueTextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    return-object v0
.end method

.method private createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 28

    .prologue
    .line 119
    move-object/from16 v3, p0

    .local v3, "this":Ljava/time/format/SimpleDateTimeTextProvider;
    move-object/from16 v4, p1

    .local v4, "field":Ljava/time/temporal/TemporalField;
    move-object/from16 v5, p2

    .local v5, "locale":Ljava/util/Locale;
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 120
    move-object/from16 v22, v5

    invoke-static/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v22

    move-object/from16 v6, v22

    .line 121
    .local v6, "oldSymbols":Ljava/text/DateFormatSymbols;
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v7, v22

    .line 122
    .local v7, "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const-wide/16 v22, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v8, v22

    .line 123
    .local v8, "f1":Ljava/lang/Long;
    const-wide/16 v22, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v9, v22

    .line 124
    .local v9, "f2":Ljava/lang/Long;
    const-wide/16 v22, 0x3

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v10, v22

    .line 125
    .local v10, "f3":Ljava/lang/Long;
    const-wide/16 v22, 0x4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v11, v22

    .line 126
    .local v11, "f4":Ljava/lang/Long;
    const-wide/16 v22, 0x5

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v12, v22

    .line 127
    .local v12, "f5":Ljava/lang/Long;
    const-wide/16 v22, 0x6

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v13, v22

    .line 128
    .local v13, "f6":Ljava/lang/Long;
    const-wide/16 v22, 0x7

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v14, v22

    .line 129
    .local v14, "f7":Ljava/lang/Long;
    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v15, v22

    .line 130
    .local v15, "f8":Ljava/lang/Long;
    const-wide/16 v22, 0x9

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v22

    .line 131
    .local v16, "f9":Ljava/lang/Long;
    const-wide/16 v22, 0xa

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v17, v22

    .line 132
    .local v17, "f10":Ljava/lang/Long;
    const-wide/16 v22, 0xb

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v18, v22

    .line 133
    .local v18, "f11":Ljava/lang/Long;
    const-wide/16 v22, 0xc

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v19, v22

    .line 134
    .local v19, "f12":Ljava/lang/Long;
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v22

    .line 135
    .local v20, "array":[Ljava/lang/String;
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v21, v22

    .line 136
    .local v21, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v22, v21

    move-object/from16 v23, v8

    move-object/from16 v24, v20

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 137
    move-object/from16 v22, v21

    move-object/from16 v23, v9

    move-object/from16 v24, v20

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 138
    move-object/from16 v22, v21

    move-object/from16 v23, v10

    move-object/from16 v24, v20

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 139
    move-object/from16 v22, v21

    move-object/from16 v23, v11

    move-object/from16 v24, v20

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 140
    move-object/from16 v22, v21

    move-object/from16 v23, v12

    move-object/from16 v24, v20

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 141
    move-object/from16 v22, v21

    move-object/from16 v23, v13

    move-object/from16 v24, v20

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 142
    move-object/from16 v22, v21

    move-object/from16 v23, v14

    move-object/from16 v24, v20

    const/16 v25, 0x6

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 143
    move-object/from16 v22, v21

    move-object/from16 v23, v15

    move-object/from16 v24, v20

    const/16 v25, 0x7

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 144
    move-object/from16 v22, v21

    move-object/from16 v23, v16

    move-object/from16 v24, v20

    const/16 v25, 0x8

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 145
    move-object/from16 v22, v21

    move-object/from16 v23, v17

    move-object/from16 v24, v20

    const/16 v25, 0x9

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 146
    move-object/from16 v22, v21

    move-object/from16 v23, v18

    move-object/from16 v24, v20

    const/16 v25, 0xa

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 147
    move-object/from16 v22, v21

    move-object/from16 v23, v19

    move-object/from16 v24, v20

    const/16 v25, 0xb

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 148
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    move-object/from16 v24, v21

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 150
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v21, v22

    .line 151
    move-object/from16 v22, v21

    move-object/from16 v23, v8

    move-object/from16 v24, v20

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 152
    move-object/from16 v22, v21

    move-object/from16 v23, v9

    move-object/from16 v24, v20

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 153
    move-object/from16 v22, v21

    move-object/from16 v23, v10

    move-object/from16 v24, v20

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 154
    move-object/from16 v22, v21

    move-object/from16 v23, v11

    move-object/from16 v24, v20

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 155
    move-object/from16 v22, v21

    move-object/from16 v23, v12

    move-object/from16 v24, v20

    const/16 v25, 0x4

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 156
    move-object/from16 v22, v21

    move-object/from16 v23, v13

    move-object/from16 v24, v20

    const/16 v25, 0x5

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 157
    move-object/from16 v22, v21

    move-object/from16 v23, v14

    move-object/from16 v24, v20

    const/16 v25, 0x6

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 158
    move-object/from16 v22, v21

    move-object/from16 v23, v15

    move-object/from16 v24, v20

    const/16 v25, 0x7

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 159
    move-object/from16 v22, v21

    move-object/from16 v23, v16

    move-object/from16 v24, v20

    const/16 v25, 0x8

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 160
    move-object/from16 v22, v21

    move-object/from16 v23, v17

    move-object/from16 v24, v20

    const/16 v25, 0x9

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 161
    move-object/from16 v22, v21

    move-object/from16 v23, v18

    move-object/from16 v24, v20

    const/16 v25, 0xa

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 162
    move-object/from16 v22, v21

    move-object/from16 v23, v19

    move-object/from16 v24, v20

    const/16 v25, 0xb

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 163
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    move-object/from16 v24, v21

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 165
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v22

    .line 166
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v21, v22

    .line 167
    move-object/from16 v22, v21

    move-object/from16 v23, v8

    move-object/from16 v24, v20

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 168
    move-object/from16 v22, v21

    move-object/from16 v23, v9

    move-object/from16 v24, v20

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 169
    move-object/from16 v22, v21

    move-object/from16 v23, v10

    move-object/from16 v24, v20

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 170
    move-object/from16 v22, v21

    move-object/from16 v23, v11

    move-object/from16 v24, v20

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 171
    move-object/from16 v22, v21

    move-object/from16 v23, v12

    move-object/from16 v24, v20

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 172
    move-object/from16 v22, v21

    move-object/from16 v23, v13

    move-object/from16 v24, v20

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 173
    move-object/from16 v22, v21

    move-object/from16 v23, v14

    move-object/from16 v24, v20

    const/16 v25, 0x6

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 174
    move-object/from16 v22, v21

    move-object/from16 v23, v15

    move-object/from16 v24, v20

    const/16 v25, 0x7

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 175
    move-object/from16 v22, v21

    move-object/from16 v23, v16

    move-object/from16 v24, v20

    const/16 v25, 0x8

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 176
    move-object/from16 v22, v21

    move-object/from16 v23, v17

    move-object/from16 v24, v20

    const/16 v25, 0x9

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 177
    move-object/from16 v22, v21

    move-object/from16 v23, v18

    move-object/from16 v24, v20

    const/16 v25, 0xa

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 178
    move-object/from16 v22, v21

    move-object/from16 v23, v19

    move-object/from16 v24, v20

    const/16 v25, 0xb

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 179
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    move-object/from16 v24, v21

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 180
    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljava/time/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v22

    move-object/from16 v3, v22

    .line 276
    .end local v3    # "this":Ljava/time/format/SimpleDateTimeTextProvider;
    .end local v6    # "oldSymbols":Ljava/text/DateFormatSymbols;
    .end local v7    # "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v8    # "f1":Ljava/lang/Long;
    .end local v9    # "f2":Ljava/lang/Long;
    .end local v10    # "f3":Ljava/lang/Long;
    .end local v11    # "f4":Ljava/lang/Long;
    .end local v12    # "f5":Ljava/lang/Long;
    .end local v13    # "f6":Ljava/lang/Long;
    .end local v14    # "f7":Ljava/lang/Long;
    .end local v15    # "f8":Ljava/lang/Long;
    .end local v16    # "f9":Ljava/lang/Long;
    .end local v17    # "f10":Ljava/lang/Long;
    .end local v18    # "f11":Ljava/lang/Long;
    .end local v19    # "f12":Ljava/lang/Long;
    .end local v20    # "array":[Ljava/lang/String;
    .end local v21    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 182
    .restart local v3    # "this":Ljava/time/format/SimpleDateTimeTextProvider;
    :cond_0
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 183
    move-object/from16 v22, v5

    invoke-static/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v22

    move-object/from16 v6, v22

    .line 184
    .restart local v6    # "oldSymbols":Ljava/text/DateFormatSymbols;
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v7, v22

    .line 185
    .restart local v7    # "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const-wide/16 v22, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v8, v22

    .line 186
    .restart local v8    # "f1":Ljava/lang/Long;
    const-wide/16 v22, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v9, v22

    .line 187
    .restart local v9    # "f2":Ljava/lang/Long;
    const-wide/16 v22, 0x3

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v10, v22

    .line 188
    .restart local v10    # "f3":Ljava/lang/Long;
    const-wide/16 v22, 0x4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v11, v22

    .line 189
    .restart local v11    # "f4":Ljava/lang/Long;
    const-wide/16 v22, 0x5

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v12, v22

    .line 190
    .restart local v12    # "f5":Ljava/lang/Long;
    const-wide/16 v22, 0x6

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v13, v22

    .line 191
    .restart local v13    # "f6":Ljava/lang/Long;
    const-wide/16 v22, 0x7

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v14, v22

    .line 192
    .restart local v14    # "f7":Ljava/lang/Long;
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v15, v22

    .line 193
    .local v15, "array":[Ljava/lang/String;
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v22

    .line 194
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v22, v16

    move-object/from16 v23, v8

    move-object/from16 v24, v15

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 195
    move-object/from16 v22, v16

    move-object/from16 v23, v9

    move-object/from16 v24, v15

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 196
    move-object/from16 v22, v16

    move-object/from16 v23, v10

    move-object/from16 v24, v15

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 197
    move-object/from16 v22, v16

    move-object/from16 v23, v11

    move-object/from16 v24, v15

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 198
    move-object/from16 v22, v16

    move-object/from16 v23, v12

    move-object/from16 v24, v15

    const/16 v25, 0x6

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 199
    move-object/from16 v22, v16

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    const/16 v25, 0x7

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 200
    move-object/from16 v22, v16

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 201
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    move-object/from16 v24, v16

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 203
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v22

    .line 204
    move-object/from16 v22, v16

    move-object/from16 v23, v8

    move-object/from16 v24, v15

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 205
    move-object/from16 v22, v16

    move-object/from16 v23, v9

    move-object/from16 v24, v15

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 206
    move-object/from16 v22, v16

    move-object/from16 v23, v10

    move-object/from16 v24, v15

    const/16 v25, 0x4

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 207
    move-object/from16 v22, v16

    move-object/from16 v23, v11

    move-object/from16 v24, v15

    const/16 v25, 0x5

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 208
    move-object/from16 v22, v16

    move-object/from16 v23, v12

    move-object/from16 v24, v15

    const/16 v25, 0x6

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 209
    move-object/from16 v22, v16

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    const/16 v25, 0x7

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 210
    move-object/from16 v22, v16

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 211
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    move-object/from16 v24, v16

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 213
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v15, v22

    .line 214
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v22

    .line 215
    move-object/from16 v22, v16

    move-object/from16 v23, v8

    move-object/from16 v24, v15

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 216
    move-object/from16 v22, v16

    move-object/from16 v23, v9

    move-object/from16 v24, v15

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 217
    move-object/from16 v22, v16

    move-object/from16 v23, v10

    move-object/from16 v24, v15

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 218
    move-object/from16 v22, v16

    move-object/from16 v23, v11

    move-object/from16 v24, v15

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 219
    move-object/from16 v22, v16

    move-object/from16 v23, v12

    move-object/from16 v24, v15

    const/16 v25, 0x6

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 220
    move-object/from16 v22, v16

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    const/16 v25, 0x7

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 221
    move-object/from16 v22, v16

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 222
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    move-object/from16 v24, v16

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 223
    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljava/time/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v22

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 225
    .end local v6    # "oldSymbols":Ljava/text/DateFormatSymbols;
    .end local v7    # "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v8    # "f1":Ljava/lang/Long;
    .end local v9    # "f2":Ljava/lang/Long;
    .end local v10    # "f3":Ljava/lang/Long;
    .end local v11    # "f4":Ljava/lang/Long;
    .end local v12    # "f5":Ljava/lang/Long;
    .end local v13    # "f6":Ljava/lang/Long;
    .end local v14    # "f7":Ljava/lang/Long;
    .end local v15    # "array":[Ljava/lang/String;
    .end local v16    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 226
    move-object/from16 v22, v5

    invoke-static/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v22

    move-object/from16 v6, v22

    .line 227
    .restart local v6    # "oldSymbols":Ljava/text/DateFormatSymbols;
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v7, v22

    .line 228
    .restart local v7    # "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v8, v22

    .line 229
    .local v8, "array":[Ljava/lang/String;
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v9, v22

    .line 230
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v22, v9

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 231
    move-object/from16 v22, v9

    const-wide/16 v23, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 232
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    move-object/from16 v24, v9

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 233
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    move-object/from16 v24, v9

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 234
    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljava/time/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v22

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 236
    .end local v6    # "oldSymbols":Ljava/text/DateFormatSymbols;
    .end local v7    # "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v8    # "array":[Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 237
    move-object/from16 v22, v5

    invoke-static/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v22

    move-object/from16 v6, v22

    .line 238
    .restart local v6    # "oldSymbols":Ljava/text/DateFormatSymbols;
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v7, v22

    .line 239
    .restart local v7    # "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v8, v22

    .line 240
    .restart local v8    # "array":[Ljava/lang/String;
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v9, v22

    .line 241
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v22, v9

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 242
    move-object/from16 v22, v9

    const-wide/16 v23, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 243
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    move-object/from16 v24, v9

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 244
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 245
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v9, v22

    .line 246
    move-object/from16 v22, v9

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "Before Christ"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 247
    move-object/from16 v22, v9

    const-wide/16 v23, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "Anno Domini"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 248
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    move-object/from16 v24, v9

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 253
    :goto_1
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v9, v22

    .line 254
    move-object/from16 v22, v9

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 255
    move-object/from16 v22, v9

    const-wide/16 v23, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v24, v8

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 256
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    move-object/from16 v24, v9

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 257
    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Ljava/time/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v22

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 251
    :cond_3
    move-object/from16 v22, v7

    sget-object v23, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    move-object/from16 v24, v9

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    goto :goto_1

    .line 260
    .end local v6    # "oldSymbols":Ljava/text/DateFormatSymbols;
    .end local v7    # "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v8    # "array":[Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 261
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v6, v22

    .line 262
    .local v6, "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v7, v22

    .line 263
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v22, v7

    const-wide/16 v23, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "Q1"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 264
    move-object/from16 v22, v7

    const-wide/16 v23, 0x2

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "Q2"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 265
    move-object/from16 v22, v7

    const-wide/16 v23, 0x3

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "Q3"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 266
    move-object/from16 v22, v7

    const-wide/16 v23, 0x4

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "Q4"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 267
    move-object/from16 v22, v6

    sget-object v23, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    move-object/from16 v24, v7

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 268
    new-instance v22, Ljava/util/HashMap;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v7, v22

    .line 269
    move-object/from16 v22, v7

    const-wide/16 v23, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "1st quarter"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 270
    move-object/from16 v22, v7

    const-wide/16 v23, 0x2

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "2nd quarter"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 271
    move-object/from16 v22, v7

    const-wide/16 v23, 0x3

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "3rd quarter"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 272
    move-object/from16 v22, v7

    const-wide/16 v23, 0x4

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v24, "4th quarter"

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 273
    move-object/from16 v22, v6

    sget-object v23, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    move-object/from16 v24, v7

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 274
    move-object/from16 v22, v6

    invoke-static/range {v22 .. v22}, Ljava/time/format/SimpleDateTimeTextProvider;->createLocaleStore(Ljava/util/Map;)Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-result-object v22

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 276
    .end local v6    # "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_5
    const-string v22, ""

    move-object/from16 v3, v22

    goto/16 :goto_0
.end method

.method private findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeTextProvider;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, p2

    .local v2, "locale":Ljava/util/Locale;
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Ljava/time/format/SimpleDateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v5

    move-object v3, v5

    .line 109
    .local v3, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/util/Locale;>;"
    sget-object v5, Ljava/time/format/SimpleDateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 110
    .local v4, "store":Ljava/lang/Object;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 111
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/time/format/SimpleDateTimeTextProvider;->createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 112
    sget-object v5, Ljava/time/format/SimpleDateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v6, v3

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 113
    sget-object v5, Ljava/time/format/SimpleDateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 115
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider;
    return-object v0
.end method


# virtual methods
.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeTextProvider;
    invoke-static {}, Ljava/text/DateFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider;
    return-object v0
.end method

.method public getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeTextProvider;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "value":J
    move-object/from16 v4, p4

    .local v4, "style":Ljava/time/format/TextStyle;
    move-object/from16 v5, p5

    .local v5, "locale":Ljava/util/Locale;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Ljava/time/format/SimpleDateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 91
    .local v6, "store":Ljava/lang/Object;
    move-object v7, v6

    instance-of v7, v7, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    if-eqz v7, :cond_0

    .line 92
    move-object v7, v6

    check-cast v7, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-wide v8, v2

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 94
    .end local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider;
    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method

.method public getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeTextProvider;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, p2

    .local v2, "style":Ljava/time/format/TextStyle;
    move-object v3, p3

    .local v3, "locale":Ljava/util/Locale;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljava/time/format/SimpleDateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 100
    .local v4, "store":Ljava/lang/Object;
    move-object v5, v4

    instance-of v5, v5, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    if-eqz v5, :cond_0

    .line 101
    move-object v5, v4

    check-cast v5, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v5

    .line 103
    .end local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider;
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method
