.class public interface abstract Ljava/time/chrono/Chronology;
.super Ljava/lang/Object;
.source "Chronology.java"


# virtual methods
.method public abstract compareTo(Ljava/time/chrono/Chronology;)I
.end method

.method public abstract date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
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

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract isLeapYear(J)Z
.end method

.method public abstract localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;
.end method

.method public abstract range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
.end method
