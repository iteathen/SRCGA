.class Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
.super Ljava/lang/Object;
.source "TzdbZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/TzdbZoneRulesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Version"
.end annotation


# instance fields
.field private final regionArray:[Ljava/lang/String;

.field private final ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ruleIndices:[S

.field private final versionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[S",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    move-object v1, p1

    .local v1, "versionId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "regionIds":[Ljava/lang/String;
    move-object v3, p3

    .local v3, "ruleIndices":[S
    move-object v4, p4

    .local v4, "ruleData":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 228
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 229
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    .line 230
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->regionArray:[Ljava/lang/String;

    .line 231
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->ruleIndices:[S

    .line 232
    return-void
.end method

.method static synthetic access$000(Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    return-object v0
.end method


# virtual methods
.method createRule(S)Ljava/time/bp/zone/ZoneRules;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    move v1, p1

    .local v1, "index":S
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 248
    .local v2, "obj":Ljava/lang/Object;
    move-object v5, v2

    instance-of v5, v5, [B

    if-eqz v5, :cond_0

    .line 249
    move-object v5, v2

    check-cast v5, [B

    check-cast v5, [B

    move-object v3, v5

    .line 250
    .local v3, "bytes":[B
    new-instance v5, Ljava/io/DataInputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 251
    .local v4, "dis":Ljava/io/DataInputStream;
    move-object v5, v4

    invoke-static {v5}, Ljava/time/bp/zone/Ser;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 252
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 254
    .end local v3    # "bytes":[B
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :cond_0
    move-object v5, v2

    check-cast v5, Ljava/time/bp/zone/ZoneRules;

    move-object v0, v5

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    return-object v0
.end method

.method getRules(Ljava/lang/String;)Ljava/time/bp/zone/ZoneRules;
    .locals 9

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    move-object v1, p1

    .local v1, "regionId":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->regionArray:[Ljava/lang/String;

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 236
    .local v2, "regionIndex":I
    move v4, v2

    if-gez v4, :cond_0

    .line 237
    const/4 v4, 0x0

    move-object v0, v4

    .line 240
    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    :cond_0
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->ruleIndices:[S

    move v6, v2

    aget-short v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->createRule(S)Ljava/time/bp/zone/ZoneRules;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 241
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 242
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/time/bp/zone/ZoneRulesException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid binary time-zone data: TZDB:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljava/time/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesProvider$Version;
    return-object v0
.end method
