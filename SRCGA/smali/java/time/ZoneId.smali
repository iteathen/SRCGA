.class public abstract Ljava/time/ZoneId;
.super Ljava/lang/Object;
.source "ZoneId.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x798cab446e6L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 143
    new-instance v1, Ljava/time/ZoneId$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/time/ZoneId$1;-><init>()V

    sput-object v1, Ljava/time/ZoneId;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 195
    new-instance v1, Ljava/util/HashMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 196
    .local v0, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, v0

    const-string v2, "ACT"

    const-string v3, "Australia/Darwin"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 197
    move-object v1, v0

    const-string v2, "AET"

    const-string v3, "Australia/Sydney"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    move-object v1, v0

    const-string v2, "AGT"

    const-string v3, "America/Argentina/Buenos_Aires"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    move-object v1, v0

    const-string v2, "ART"

    const-string v3, "Africa/Cairo"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 200
    move-object v1, v0

    const-string v2, "AST"

    const-string v3, "America/Anchorage"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 201
    move-object v1, v0

    const-string v2, "BET"

    const-string v3, "America/Sao_Paulo"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    move-object v1, v0

    const-string v2, "BST"

    const-string v3, "Asia/Dhaka"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 203
    move-object v1, v0

    const-string v2, "CAT"

    const-string v3, "Africa/Harare"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    move-object v1, v0

    const-string v2, "CNT"

    const-string v3, "America/St_Johns"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    move-object v1, v0

    const-string v2, "CST"

    const-string v3, "America/Chicago"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 206
    move-object v1, v0

    const-string v2, "CTT"

    const-string v3, "Asia/Shanghai"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    move-object v1, v0

    const-string v2, "EAT"

    const-string v3, "Africa/Addis_Ababa"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    move-object v1, v0

    const-string v2, "ECT"

    const-string v3, "Europe/Paris"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    move-object v1, v0

    const-string v2, "IET"

    const-string v3, "America/Indiana/Indianapolis"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    move-object v1, v0

    const-string v2, "IST"

    const-string v3, "Asia/Kolkata"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 211
    move-object v1, v0

    const-string v2, "JST"

    const-string v3, "Asia/Tokyo"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 212
    move-object v1, v0

    const-string v2, "MIT"

    const-string v3, "Pacific/Apia"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 213
    move-object v1, v0

    const-string v2, "NET"

    const-string v3, "Asia/Yerevan"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 214
    move-object v1, v0

    const-string v2, "NST"

    const-string v3, "Pacific/Auckland"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    move-object v1, v0

    const-string v2, "PLT"

    const-string v3, "Asia/Karachi"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 216
    move-object v1, v0

    const-string v2, "PNT"

    const-string v3, "America/Phoenix"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    move-object v1, v0

    const-string v2, "PRT"

    const-string v3, "America/Puerto_Rico"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    move-object v1, v0

    const-string v2, "PST"

    const-string v3, "America/Los_Angeles"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    move-object v1, v0

    const-string v2, "SST"

    const-string v3, "Pacific/Guadalcanal"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    move-object v1, v0

    const-string v2, "VST"

    const-string v3, "Asia/Ho_Chi_Minh"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    move-object v1, v0

    const-string v2, "EST"

    const-string v3, "-05:00"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 222
    move-object v1, v0

    const-string v2, "MST"

    const-string v3, "-07:00"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 223
    move-object v1, v0

    const-string v2, "HST"

    const-string v3, "-10:00"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 224
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Ljava/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    .line 225
    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 419
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/time/ZoneOffset;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/time/ZoneRegion;

    if-eq v1, v2, :cond_0

    .line 420
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid subclass"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 422
    :cond_0
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .locals 7

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneId;

    move-object v1, v2

    .line 407
    .local v1, "obj":Ljava/time/ZoneId;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 408
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain ZoneId from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 409
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0
.end method

.method public static getAvailableZoneIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Ljava/time/bp/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Ljava/time/ZoneId;
    .locals 9

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "zoneId":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "zoneId"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 330
    move-object v2, v0

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-object v0, v2

    .line 357
    .end local v0    # "zoneId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 333
    .restart local v0    # "zoneId":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 334
    new-instance v2, Ljava/time/DateTimeException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid zone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_1
    move-object v2, v0

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    :cond_2
    move-object v2, v0

    invoke-static {v2}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 339
    :cond_3
    move-object v2, v0

    const-string v3, "UTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v0

    const-string v3, "UT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 340
    :cond_4
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto :goto_0

    .line 342
    :cond_5
    move-object v2, v0

    const-string v3, "UTC+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v0

    const-string v3, "GMT+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v0

    const-string v3, "UTC-"

    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v0

    const-string v3, "GMT-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 344
    :cond_6
    move-object v2, v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v1, v2

    .line 345
    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_7

    .line 346
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 348
    :cond_7
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 350
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_8
    move-object v2, v0

    const-string v3, "UT+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v0

    const-string v3, "UT-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 351
    :cond_9
    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v1, v2

    .line 352
    .restart local v1    # "offset":Ljava/time/ZoneOffset;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_a

    .line 353
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "UT"

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 355
    :cond_a
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 357
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_b
    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/time/ZoneRegion;->ofId(Ljava/lang/String;Z)Ljava/time/ZoneRegion;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static of(Ljava/lang/String;Ljava/util/Map;)Ljava/time/ZoneId;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/time/ZoneId;"
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "zoneId":Ljava/lang/String;
    move-object v1, p1

    .local v1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, v0

    const-string v4, "zoneId"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 282
    move-object v3, v1

    const-string v4, "aliasMap"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 283
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 284
    .local v2, "id":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    :goto_0
    move-object v2, v3

    .line 285
    move-object v3, v2

    invoke-static {v3}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "zoneId":Ljava/lang/String;
    return-object v0

    .line 284
    .restart local v0    # "zoneId":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method public static ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;
    .locals 7

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v0

    const-string v3, "prefix"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 375
    move-object v2, v1

    const-string v3, "offset"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 376
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 377
    move-object v2, v1

    move-object v0, v2

    .line 383
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 379
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    const-string v3, "UTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    const-string v3, "UT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-nez v2, :cond_2

    .line 381
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto :goto_0

    .line 383
    :cond_2
    new-instance v2, Ljava/time/ZoneRegion;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;)V

    move-object v0, v2

    goto :goto_0

    .line 385
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid prefix, must be GMT, UTC or UT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static systemDefault()Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;Ljava/util/Map;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneId;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 531
    const/4 v3, 0x1

    move v0, v3

    .line 537
    .end local v0    # "this":Ljava/time/ZoneId;
    :goto_0
    return v0

    .line 533
    .restart local v0    # "this":Ljava/time/ZoneId;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/ZoneId;

    if-eqz v3, :cond_1

    .line 534
    move-object v3, v1

    check-cast v3, Ljava/time/ZoneId;

    move-object v2, v3

    .line 535
    .local v2, "other":Ljava/time/ZoneId;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 537
    .end local v2    # "other":Ljava/time/ZoneId;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneId;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/TextStyle;
    move-object v2, p2

    .local v2, "locale":Ljava/util/Locale;
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    new-instance v4, Ljava/time/ZoneId$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/time/ZoneId$2;-><init>(Ljava/time/ZoneId;)V

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZoneId;
    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRules()Ljava/time/bp/zone/ZoneRules;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZoneId;
    return v0
.end method

.method public normalized()Ljava/time/ZoneId;
    .locals 4

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneId;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v2

    move-object v1, v2

    .line 510
    .local v1, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneRules;->isFixedOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    move-object v2, v1

    sget-object v3, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-virtual {v2, v3}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    :try_end_0
    .catch Ljava/time/bp/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 516
    .end local v0    # "this":Ljava/time/ZoneId;
    :goto_0
    return-object v0

    .line 515
    .line 516
    .end local v1    # "rules":Ljava/time/bp/zone/ZoneRules;
    .restart local v0    # "this":Ljava/time/ZoneId;
    :cond_0
    :goto_1
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 513
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZoneId;
    return-object v0
.end method

.method abstract write(Ljava/io/DataOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
