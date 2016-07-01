.class public abstract Ljava/time/jdk8/DefaultInterfaceTemporal;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "DefaultInterfaceTemporal.java"

# interfaces
.implements Ljava/time/temporal/Temporal;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    move-wide v2, p1

    .local v2, "amountToSubtract":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-wide v5, v2

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v1

    const-wide v6, 0x7fffffffffffffffL

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/jdk8/DefaultInterfaceTemporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    return-object v1

    .restart local v1    # "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/jdk8/DefaultInterfaceTemporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/jdk8/DefaultInterfaceTemporal;
    return-object v0
.end method
