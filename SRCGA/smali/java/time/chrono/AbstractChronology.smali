.class public abstract Ljava/time/chrono/AbstractChronology;
.super Ljava/lang/Object;
.source "AbstractChronology.java"

# interfaces
.implements Ljava/time/chrono/Chronology;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/chrono/Chronology;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/chrono/Chronology;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/chrono/AbstractChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/chrono/AbstractChronology;",
            ">;"
        }
    .end annotation
.end field

.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/chrono/AbstractChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCALE_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 146
    new-instance v2, Ljava/time/chrono/AbstractChronology$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/time/chrono/AbstractChronology$1;-><init>()V

    sput-object v2, Ljava/time/chrono/AbstractChronology;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 156
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    .line 160
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    const/4 v2, 0x0

    move-object v0, v2

    .line 168
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v2, Ljava/util/Locale;

    const-string v3, "getUnicodeLocaleType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 171
    .line 172
    :goto_0
    move-object v2, v0

    sput-object v2, Ljava/time/chrono/AbstractChronology;->LOCALE_METHOD:Ljava/lang/reflect/Method;

    .line 173
    return-void

    .line 169
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 348
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    const-string v3, "temporal"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 194
    move-object v2, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/AbstractChronology;

    move-object v1, v2

    .line 195
    .local v1, "obj":Ljava/time/chrono/AbstractChronology;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0

    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    goto :goto_0
.end method

.method public static getAvailableChronologies()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/time/chrono/AbstractChronology;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->init()V

    .line 312
    new-instance v0, Ljava/util/HashSet;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static init()V
    .locals 7

    .prologue
    .line 316
    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {v4}, Ljava/time/chrono/AbstractChronology;->register(Ljava/time/chrono/AbstractChronology;)V

    .line 318
    sget-object v4, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-static {v4}, Ljava/time/chrono/AbstractChronology;->register(Ljava/time/chrono/AbstractChronology;)V

    .line 319
    sget-object v4, Ljava/time/chrono/MinguoChronology;->INSTANCE:Ljava/time/chrono/MinguoChronology;

    invoke-static {v4}, Ljava/time/chrono/AbstractChronology;->register(Ljava/time/chrono/AbstractChronology;)V

    .line 320
    sget-object v4, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-static {v4}, Ljava/time/chrono/AbstractChronology;->register(Ljava/time/chrono/AbstractChronology;)V

    .line 321
    sget-object v4, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-static {v4}, Ljava/time/chrono/AbstractChronology;->register(Ljava/time/chrono/AbstractChronology;)V

    .line 322
    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "Hijrah"

    sget-object v6, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 323
    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "islamic"

    sget-object v6, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 324
    const-class v4, Ljava/time/chrono/AbstractChronology;

    const-class v5, Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v4

    move-object v0, v4

    .line 325
    .local v0, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/AbstractChronology;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/chrono/AbstractChronology;

    move-object v2, v4

    .line 326
    .local v2, "chrono":Ljava/time/chrono/AbstractChronology;
    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 327
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronology;->getCalendarType()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 328
    .local v3, "type":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 329
    sget-object v4, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 331
    :cond_0
    goto :goto_0

    .line 333
    .end local v2    # "chrono":Ljava/time/chrono/AbstractChronology;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static of(Ljava/lang/String;)Ljava/time/chrono/AbstractChronology;
    .locals 7

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "id":Ljava/lang/String;
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->init()V

    .line 292
    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/AbstractChronology;

    move-object v1, v2

    .line 293
    .local v1, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 294
    move-object v2, v1

    move-object v0, v2

    .line 298
    .end local v0    # "id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 296
    .restart local v0    # "id":Ljava/lang/String;
    :cond_0
    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/AbstractChronology;

    move-object v1, v2

    .line 297
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 298
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 300
    :cond_1
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown chronology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static ofLocale_static(Ljava/util/Locale;)Ljava/time/chrono/AbstractChronology;
    .locals 10

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->init()V

    .line 241
    move-object v3, v0

    const-string v4, "locale"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 242
    const-string v3, "iso"

    move-object v1, v3

    .line 243
    .local v1, "type":Ljava/lang/String;
    sget-object v3, Ljava/time/chrono/AbstractChronology;->LOCALE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 246
    :try_start_0
    sget-object v3, Ljava/time/chrono/AbstractChronology;->LOCALE_METHOD:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "ca"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v3

    .line 253
    .line 257
    :cond_0
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_1

    const-string v3, "iso"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "iso8601"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    :cond_1
    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v3

    .line 264
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_1
    return-object v0

    .line 247
    .restart local v0    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 253
    goto :goto_0

    .line 249
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 253
    goto :goto_0

    .line 251
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 253
    goto :goto_0

    .line 254
    :cond_2
    move-object v3, v0

    sget-object v4, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "japanese"

    move-object v1, v3

    goto :goto_0

    .line 260
    :cond_3
    sget-object v3, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/AbstractChronology;

    move-object v2, v3

    .line 261
    .local v2, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v3, v2

    if-nez v3, :cond_4

    .line 262
    new-instance v3, Ljava/time/DateTimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown calendar system: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_4
    move-object v3, v2

    move-object v0, v3

    goto :goto_1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronology;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 901
    .local v1, "id":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/AbstractChronology;->of(Ljava/lang/String;)Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static register(Ljava/time/chrono/AbstractChronology;)V
    .locals 5

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "chrono":Ljava/time/chrono/AbstractChronology;
    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 337
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronology;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 338
    .local v1, "type":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 339
    sget-object v2, Ljava/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 341
    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    new-instance v1, Ljava/time/chrono/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0xb

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/Chronology;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return v0
.end method

.method public compareTo(Ljava/time/chrono/Chronology;)I
    .locals 4

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/Chronology;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return v0
.end method

.method public abstract date(III)Ljava/time/chrono/AbstractChronoLocalDate;
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move v3, p3

    .local v3, "month":I
    move v4, p4

    .local v4, "dayOfMonth":I
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v6

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public abstract date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public abstract dateEpochDay(J)Ljava/time/chrono/AbstractChronoLocalDate;
.end method

.method public dateNow()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 3

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, v0

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "clock":Ljava/time/Clock;
    move-object v2, v1

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 563
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public abstract dateYearDay(II)Ljava/time/chrono/AbstractChronoLocalDate;
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move v3, p3

    .local v3, "dayOfYear":I
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/AbstractChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v5

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/time/chrono/AbstractChronology;->dateYearDay(II)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public ensureChronoLocalDate(Ljava/time/temporal/Temporal;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/time/chrono/AbstractChronoLocalDate;",
            ">(",
            "Ljava/time/temporal/Temporal;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v2, v3

    .line 363
    .local v2, "other":Ljava/time/chrono/AbstractChronoLocalDate;, "TD;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chrono mismatch, expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", actual: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/time/chrono/AbstractChronoLocalDate;",
            ">(",
            "Ljava/time/temporal/Temporal;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v2, v3

    .line 382
    .local v2, "other":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chrono mismatch, required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", supplied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    .line 384
    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 386
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public ensureChronoZonedDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/time/chrono/AbstractChronoLocalDate;",
            ">(",
            "Ljava/time/temporal/Temporal;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v2, v3

    .line 400
    .local v2, "other":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 401
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chrono mismatch, required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", supplied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    .line 402
    invoke-virtual {v6}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 849
    const/4 v2, 0x1

    move v0, v2

    .line 854
    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    :goto_0
    return v0

    .line 851
    .restart local v0    # "this":Ljava/time/chrono/AbstractChronology;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/AbstractChronology;

    if-eqz v2, :cond_2

    .line 852
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 854
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public abstract eraOf(I)Ljava/time/chrono/Era;
.end method

.method public abstract eras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalendarType()Ljava/lang/String;
.end method

.method public getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
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

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    new-instance v4, Ljava/time/chrono/AbstractChronology$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/time/chrono/AbstractChronology$2;-><init>(Ljava/time/chrono/AbstractChronology;)V

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return v0
.end method

.method public abstract isLeapYear(J)Z
.end method

.method public localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v3

    move-object v2, v3

    .line 584
    .local v2, "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0

    .line 585
    .end local v2    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    .restart local v0    # "this":Ljava/time/chrono/AbstractChronology;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 586
    .local v2, "ex":Ljava/time/DateTimeException;
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "l":Ljava/util/Locale;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/AbstractChronology;->ofLocale_static(Ljava/util/Locale;)Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public period(III)Ljava/time/chrono/ChronoPeriod;
    .locals 11

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move v1, p1

    .local v1, "years":I
    move v2, p2

    .local v2, "months":I
    move v3, p3

    .local v3, "days":I
    new-instance v4, Ljava/time/chrono/ChronoPeriodImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/AbstractChronology;III)V

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public abstract prolepticYear(Ljava/time/chrono/Era;I)I
.end method

.method public abstract range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/AbstractChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object v2, p2

    .local v2, "resolverStyle":Ljava/time/format/ResolverStyle;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ThreeTen Backport does not support resolveDate"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/ChronoField;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object v2, p2

    .local v2, "field":Ljava/time/temporal/ChronoField;
    move-wide/from16 v3, p3

    .local v3, "value":J
    move-object v6, v1

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object v5, v6

    .line 811
    .local v5, "current":Ljava/lang/Long;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v8, v3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 812
    new-instance v6, Ljava/time/DateTimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid state, field: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " conflicts with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 814
    :cond_0
    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 815
    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 897
    return-void
.end method

.method public zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljava/time/chrono/AbstractChronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v4

    move-object v3, v4

    .line 633
    .local v3, "result":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<+Ljava/time/chrono/AbstractChronoLocalDate;>;"
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    return-object v0
.end method

.method public zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Ljava/time/ZoneId;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    move-object v2, v6

    .line 608
    .local v2, "zone":Ljava/time/ZoneId;
    move-object v6, v1

    :try_start_1
    invoke-static {v6}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v6

    move-object v3, v6

    .line 609
    .local v3, "instant":Ljava/time/Instant;
    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 614
    .end local v0    # "this":Ljava/time/chrono/AbstractChronology;
    .end local v3    # "instant":Ljava/time/Instant;
    :goto_0
    return-object v0

    .line 611
    .restart local v0    # "this":Ljava/time/chrono/AbstractChronology;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 612
    .local v3, "ex1":Ljava/time/DateTimeException;
    move-object v6, v0

    move-object v7, v1

    :try_start_2
    invoke-virtual {v6, v7}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v6

    move-object v4, v6

    .line 613
    .local v4, "cldt":Ljava/time/chrono/ChronoLocalDateTime;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v6

    move-object v5, v6

    .line 614
    .local v5, "cldtImpl":Ljava/time/chrono/ChronoLocalDateTimeImpl;
    move-object v6, v5

    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;
    :try_end_2
    .catch Ljava/time/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 616
    .end local v2    # "zone":Ljava/time/ZoneId;
    .end local v3    # "ex1":Ljava/time/DateTimeException;
    .end local v4    # "cldt":Ljava/time/chrono/ChronoLocalDateTime;
    .end local v5    # "cldtImpl":Ljava/time/chrono/ChronoLocalDateTimeImpl;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 617
    .local v2, "ex":Ljava/time/DateTimeException;
    new-instance v6, Ljava/time/DateTimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method
