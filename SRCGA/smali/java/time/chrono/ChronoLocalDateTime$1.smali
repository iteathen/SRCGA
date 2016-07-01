.class final Ljava/time/chrono/ChronoLocalDateTime$1;
.super Ljava/lang/Object;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/chrono/ChronoLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/time/chrono/ChronoLocalDateTime",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/time/chrono/ChronoLocalDateTime;

    move-object v5, v2

    check-cast v5, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoLocalDateTime$1;->compare(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime$1;
    return v0
.end method

.method public compare(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime$1;
    move-object v1, p1

    .local v1, "datetime1":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v2, p2

    .local v2, "datetime2":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v3, v4

    .line 120
    .local v3, "cmp":I
    move v4, v3

    if-nez v4, :cond_0

    .line 121
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v3, v4

    .line 123
    :cond_0
    move v4, v3

    move v0, v4

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime$1;
    return v0
.end method
