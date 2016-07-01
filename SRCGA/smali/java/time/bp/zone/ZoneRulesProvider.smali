.class public abstract Ljava/time/bp/zone/ZoneRulesProvider;
.super Ljava/lang/Object;
.source "ZoneRulesProvider.java"


# static fields
.field private static final PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/time/bp/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZONES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 81
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v2, Ljava/time/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/16 v4, 0x200

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v2, Ljava/time/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    .line 87
    new-instance v2, Ljava/time/bp/zone/TzdbZoneRulesProvider;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/time/bp/zone/TzdbZoneRulesProvider;-><init>()V

    move-object v0, v2

    .line 88
    .local v0, "provider":Ljava/time/bp/zone/ZoneRulesProvider;
    move-object v2, v0

    invoke-static {v2}, Ljava/time/bp/zone/ZoneRulesProvider;->registerProvider0(Ljava/time/bp/zone/ZoneRulesProvider;)V

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 90
    .local v1, "loaded":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneRulesProvider;>;"
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 107
    sget-object v2, Ljava/time/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 108
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesProvider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method

.method public static getAvailableZoneIds()Ljava/util/Set;
    .locals 4
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
    .line 119
    new-instance v0, Ljava/util/HashSet;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Ljava/time/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getProvider(Ljava/lang/String;)Ljava/time/bp/zone/ZoneRulesProvider;
    .locals 7

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "zoneId":Ljava/lang/String;
    sget-object v2, Ljava/time/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/bp/zone/ZoneRulesProvider;

    move-object v1, v2

    .line 188
    .local v1, "provider":Ljava/time/bp/zone/ZoneRulesProvider;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 189
    sget-object v2, Ljava/time/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    new-instance v2, Ljava/time/bp/zone/ZoneRulesException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "No time-zone data files registered"

    invoke-direct {v3, v4}, Ljava/time/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_0
    new-instance v2, Ljava/time/bp/zone/ZoneRulesException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown time-zone ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "zoneId":Ljava/lang/String;
    return-object v0
.end method

.method public static getRules(Ljava/lang/String;Z)Ljava/time/bp/zone/ZoneRules;
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "zoneId":Ljava/lang/String;
    move v1, p1

    .local v1, "forCaching":Z
    move-object v2, v0

    const-string v3, "zoneId"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    move-object v2, v0

    invoke-static {v2}, Ljava/time/bp/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Ljava/time/bp/zone/ZoneRulesProvider;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/time/bp/zone/ZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Ljava/time/bp/zone/ZoneRules;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "zoneId":Ljava/lang/String;
    return-object v0
.end method

.method public static getVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "zoneId":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "zoneId"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    move-object v1, v0

    invoke-static {v1}, Ljava/time/bp/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Ljava/time/bp/zone/ZoneRulesProvider;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/time/bp/zone/ZoneRulesProvider;->provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zoneId":Ljava/lang/String;
    return-object v0
.end method

.method public static refresh()Z
    .locals 5

    .prologue
    .line 253
    const/4 v3, 0x0

    move v0, v3

    .line 254
    .local v0, "changed":Z
    sget-object v3, Ljava/time/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/bp/zone/ZoneRulesProvider;

    move-object v2, v3

    .line 255
    .local v2, "provider":Ljava/time/bp/zone/ZoneRulesProvider;
    move v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneRulesProvider;->provideRefresh()Z

    move-result v4

    or-int/2addr v3, v4

    move v0, v3

    .line 256
    goto :goto_0

    .line 257
    .end local v2    # "provider":Ljava/time/bp/zone/ZoneRulesProvider;
    :cond_0
    move v3, v0

    move v0, v3

    .end local v0    # "changed":Z
    return v0
.end method

.method public static registerProvider(Ljava/time/bp/zone/ZoneRulesProvider;)V
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "provider":Ljava/time/bp/zone/ZoneRulesProvider;
    move-object v1, v0

    const-string v2, "provider"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    move-object v1, v0

    invoke-static {v1}, Ljava/time/bp/zone/ZoneRulesProvider;->registerProvider0(Ljava/time/bp/zone/ZoneRulesProvider;)V

    .line 216
    sget-object v1, Ljava/time/bp/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 217
    return-void
.end method

.method private static registerProvider0(Ljava/time/bp/zone/ZoneRulesProvider;)V
    .locals 9

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "provider":Ljava/time/bp/zone/ZoneRulesProvider;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneRulesProvider;->provideZoneIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 227
    .local v2, "zoneId":Ljava/lang/String;
    move-object v4, v2

    const-string v5, "zoneId"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 228
    sget-object v4, Ljava/time/bp/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    move-object v5, v2

    move-object v6, v0

    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/bp/zone/ZoneRulesProvider;

    move-object v3, v4

    .line 229
    .local v3, "old":Ljava/time/bp/zone/ZoneRulesProvider;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 230
    new-instance v4, Ljava/time/bp/zone/ZoneRulesException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to register zone as one already registered with that ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currently loading from provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_0
    goto :goto_0

    .line 235
    .end local v2    # "zoneId":Ljava/lang/String;
    .end local v3    # "old":Ljava/time/bp/zone/ZoneRulesProvider;
    :cond_1
    return-void
.end method


# virtual methods
.method protected provideRefresh()Z
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesProvider;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesProvider;
    return v0
.end method

.method protected abstract provideRules(Ljava/lang/String;Z)Ljava/time/bp/zone/ZoneRules;
.end method

.method protected abstract provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract provideZoneIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
