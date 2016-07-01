.class public final Lcom/sun/glass/ui/EventLoop;
.super Ljava/lang/Object;
.source "EventLoop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/EventLoop$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/glass/ui/EventLoop;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private returnValue:Ljava/lang/Object;

.field private state:Lcom/sun/glass/ui/EventLoop$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-class v0, Lcom/sun/glass/ui/EventLoop;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/glass/ui/EventLoop;->$assertionsDisabled:Z

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/EventLoop;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v1, v0

    sget-object v2, Lcom/sun/glass/ui/EventLoop$State;->IDLE:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v2, v1, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 61
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 62
    return-void
.end method

.method static synthetic access$lambda$0()V
    .locals 0

    invoke-static {}, Lcom/sun/glass/ui/EventLoop;->lambda$enter$40()V

    return-void
.end method

.method static synthetic access$lambda$1()V
    .locals 0

    invoke-static {}, Lcom/sun/glass/ui/EventLoop;->lambda$enter$40()V

    return-void
.end method

.method private static synthetic lambda$enter$40()V
    .locals 3

    .prologue
    .line 120
    sget-object v1, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/glass/ui/EventLoop;

    move-object v0, v1

    .line 122
    .local v0, "loop":Lcom/sun/glass/ui/EventLoop;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v2, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/Application;->leaveNestedEventLoop(Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/EventLoop;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 100
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v5, Lcom/sun/glass/ui/EventLoop$State;->IDLE:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "The event loop object isn\'t idle"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_0
    move-object v4, v0

    sget-object v5, Lcom/sun/glass/ui/EventLoop$State;->ACTIVE:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v5, v4, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 105
    sget-object v4, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 107
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/Application;->enterNestedEventLoop()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 108
    .local v1, "ret":Ljava/lang/Object;
    sget-boolean v4, Lcom/sun/glass/ui/EventLoop;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    move-object v4, v1

    move-object v5, v0

    if-eq v4, v5, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Internal inconsistency - wrong EventLoop"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v1    # "ret":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/EventLoop;->returnValue:Ljava/lang/Object;

    .line 115
    move-object v4, v0

    sget-object v5, Lcom/sun/glass/ui/EventLoop$State;->IDLE:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v5, v4, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 116
    sget-object v4, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    .line 118
    sget-object v4, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/EventLoop;

    iget-object v4, v4, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v5, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    invoke-static {}, Lcom/sun/glass/ui/EventLoop$$Lambda$2;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    :cond_1
    move-object v4, v3

    throw v4

    .line 109
    .restart local v1    # "ret":Ljava/lang/Object;
    :cond_2
    :try_start_1
    sget-boolean v4, Lcom/sun/glass/ui/EventLoop;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    if-eq v4, v5, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Internal inconsistency - corrupted event loops stack"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 110
    :cond_3
    sget-boolean v4, Lcom/sun/glass/ui/EventLoop;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v5, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "The event loop isn\'t leaving"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 112
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/EventLoop;->returnValue:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 114
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/EventLoop;->returnValue:Ljava/lang/Object;

    .line 115
    move-object v4, v0

    sget-object v5, Lcom/sun/glass/ui/EventLoop$State;->IDLE:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v5, v4, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 116
    sget-object v4, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    .line 118
    sget-object v4, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/EventLoop;

    iget-object v4, v4, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v5, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 119
    invoke-static {}, Lcom/sun/glass/ui/EventLoop$$Lambda$1;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    :cond_5
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/EventLoop;
    return-object v0
.end method

.method public getState()Lcom/sun/glass/ui/EventLoop$State;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/EventLoop;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 71
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/EventLoop;
    return-object v0
.end method

.method public leave(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/EventLoop;
    move-object v1, p1

    .local v1, "ret":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 158
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    sget-object v3, Lcom/sun/glass/ui/EventLoop$State;->ACTIVE:Lcom/sun/glass/ui/EventLoop$State;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/EventLoop$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "The event loop object isn\'t active"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_0
    move-object v2, v0

    sget-object v3, Lcom/sun/glass/ui/EventLoop$State;->LEAVING:Lcom/sun/glass/ui/EventLoop$State;

    iput-object v3, v2, Lcom/sun/glass/ui/EventLoop;->state:Lcom/sun/glass/ui/EventLoop$State;

    .line 163
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/EventLoop;->returnValue:Ljava/lang/Object;

    .line 165
    sget-object v2, Lcom/sun/glass/ui/EventLoop;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    if-ne v2, v3, :cond_1

    .line 166
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->leaveNestedEventLoop(Ljava/lang/Object;)V

    .line 168
    :cond_1
    return-void
.end method
