.class public interface abstract Ljava/time/temporal/TemporalAmount;
.super Ljava/lang/Object;
.source "TemporalAmount.java"


# virtual methods
.method public abstract addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

.method public abstract get(Ljava/time/temporal/TemporalUnit;)J
.end method

.method public abstract getUnits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method
