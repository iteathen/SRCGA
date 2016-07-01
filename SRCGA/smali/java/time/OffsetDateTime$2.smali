.class final Ljava/time/OffsetDateTime$2;
.super Ljava/lang/Object;
.source "OffsetDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/OffsetDateTime;
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
        "Ljava/time/OffsetDateTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/time/OffsetDateTime;

    move-object v5, v2

    check-cast v5, Ljava/time/OffsetDateTime;

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime$2;->compare(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime$2;
    return v0
.end method

.method public compare(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime$2;
    move-object v1, p1

    .local v1, "datetime1":Ljava/time/OffsetDateTime;
    move-object v2, p2

    .local v2, "datetime2":Ljava/time/OffsetDateTime;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v3, v4

    .line 140
    .local v3, "cmp":I
    move v4, v3

    if-nez v4, :cond_0

    .line 141
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->getNano()I

    move-result v4

    int-to-long v4, v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->getNano()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v3, v4

    .line 143
    :cond_0
    move v4, v3

    move v0, v4

    .end local v0    # "this":Ljava/time/OffsetDateTime$2;
    return v0
.end method
