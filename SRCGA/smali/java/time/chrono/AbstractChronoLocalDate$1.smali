.class final Ljava/time/chrono/AbstractChronoLocalDate$1;
.super Ljava/lang/Object;
.source "AbstractChronoLocalDate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/chrono/AbstractChronoLocalDate;
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
        "Ljava/time/chrono/AbstractChronoLocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v5, v2

    check-cast v5, Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/AbstractChronoLocalDate$1;->compare(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/chrono/AbstractChronoLocalDate;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate$1;
    return v0
.end method

.method public compare(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/chrono/AbstractChronoLocalDate;)I
    .locals 8

    .prologue
    .line 247
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/AbstractChronoLocalDate$1;
    move-object v2, p1

    .local v2, "date1":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v3, p2

    .local v3, "date2":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v1, v4

    .end local v1    # "this":Ljava/time/chrono/AbstractChronoLocalDate$1;
    return v1
.end method
