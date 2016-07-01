.class final Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/webkit/SeparateThreadTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FireRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/webkit/SeparateThreadTimer;

.field private volatile time:J


# direct methods
.method private constructor <init>(Lcom/sun/webkit/SeparateThreadTimer;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;->this$0:Lcom/sun/webkit/SeparateThreadTimer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/webkit/SeparateThreadTimer;Lcom/sun/webkit/SeparateThreadTimer$1;)V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/webkit/SeparateThreadTimer;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/webkit/SeparateThreadTimer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;-><init>(Lcom/sun/webkit/SeparateThreadTimer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/webkit/SeparateThreadTimer$FireRunner;J)Ljava/lang/Runnable;
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "x0":Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
    move-wide v1, p1

    .local v1, "x1":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;->forTime(J)Ljava/lang/Runnable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
    return-object v0
.end method

.method private forTime(J)Ljava/lang/Runnable;
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
    move-wide v1, p1

    .local v1, "time":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;->time:J

    .line 131
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/SeparateThreadTimer$FireRunner;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;->this$0:Lcom/sun/webkit/SeparateThreadTimer;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/webkit/SeparateThreadTimer$FireRunner;->time:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/webkit/SeparateThreadTimer;->fireTimerEvent(J)V

    .line 137
    return-void
.end method
