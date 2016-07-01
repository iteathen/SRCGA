.class final Ljavafx/concurrent/ScheduledService$1;
.super Ljava/lang/Object;
.source "ScheduledService.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/concurrent/ScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/concurrent/ScheduledService",
        "<*>;",
        "Ljavafx/util/Duration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/concurrent/ScheduledService;

    invoke-virtual {v2, v3}, Ljavafx/concurrent/ScheduledService$1;->call(Ljavafx/concurrent/ScheduledService;)Ljavafx/util/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/concurrent/ScheduledService$1;
    return-object v0
.end method

.method public call(Ljavafx/concurrent/ScheduledService;)Ljavafx/util/Duration;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/concurrent/ScheduledService",
            "<*>;)",
            "Ljavafx/util/Duration;"
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService$1;
    move-object v1, p1

    .local v1, "service":Ljavafx/concurrent/ScheduledService;, "Ljavafx/concurrent/ScheduledService<*>;"
    move-object v6, v1

    if-nez v6, :cond_0

    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v0, v6

    .line 163
    .end local v0    # "this":Ljavafx/concurrent/ScheduledService$1;
    :goto_0
    return-object v0

    .line 161
    .restart local v0    # "this":Ljavafx/concurrent/ScheduledService$1;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/concurrent/ScheduledService;->getPeriod()Ljavafx/util/Duration;

    move-result-object v6

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    :goto_1
    move-wide v2, v6

    .line 162
    .local v2, "period":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/concurrent/ScheduledService;->getCurrentFailureCount()I

    move-result v6

    int-to-double v6, v6

    move-wide v4, v6

    .line 163
    .local v4, "x":D
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    :goto_2
    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 161
    .end local v2    # "period":D
    .end local v4    # "x":D
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/concurrent/ScheduledService;->getPeriod()Ljavafx/util/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v6

    goto :goto_1

    .line 163
    .restart local v2    # "period":D
    .restart local v4    # "x":D
    :cond_2
    move-wide v6, v2

    move-wide v8, v2

    move-wide v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    goto :goto_2
.end method
