.class public interface abstract Ljava/time/temporal/Temporal;
.super Ljava/lang/Object;
.source "Temporal.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;


# virtual methods
.method public abstract isSupported(Ljava/time/temporal/TemporalUnit;)Z
.end method

.method public abstract minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
.end method

.method public abstract minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
.end method

.method public abstract plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
.end method

.method public abstract plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
.end method

.method public abstract until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
.end method

.method public abstract with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
.end method

.method public abstract with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
.end method
