.class public interface abstract Ljava/time/temporal/TemporalAccessor;
.super Ljava/lang/Object;
.source "TemporalAccessor.java"


# virtual methods
.method public abstract get(Ljava/time/temporal/TemporalField;)I
.end method

.method public abstract getLong(Ljava/time/temporal/TemporalField;)J
.end method

.method public abstract isSupported(Ljava/time/temporal/TemporalField;)Z
.end method

.method public abstract query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
.end method
