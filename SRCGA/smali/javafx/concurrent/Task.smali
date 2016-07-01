.class public abstract Ljavafx/concurrent/Task;
.super Ljava/util/concurrent/FutureTask;
.source "Task.java"

# interfaces
.implements Ljavafx/concurrent/Worker;
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/concurrent/Task$TaskCallable;,
        Ljavafx/concurrent/Task$ProgressUpdate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljavafx/concurrent/Worker",
        "<TV;>;",
        "Ljavafx/event/EventTarget;"
    }
.end annotation


# static fields
.field private static final modifyThreadPerm:Ljava/security/Permission;


# instance fields
.field private eventHelper:Ljavafx/concurrent/EventHelper;

.field private final exception:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljavafx/beans/property/StringProperty;

.field private messageUpdate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final progress:Ljavafx/beans/property/DoubleProperty;

.field private progressUpdate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljavafx/concurrent/Task$ProgressUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final running:Ljavafx/beans/property/BooleanProperty;

.field private volatile started:Z

.field private state:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/concurrent/Worker$State;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljavafx/beans/property/StringProperty;

.field private titleUpdate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final totalWork:Ljavafx/beans/property/DoubleProperty;

.field private final value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TV;>;"
        }
    .end annotation
.end field

.field private valueUpdate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final workDone:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/RuntimePermission;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "modifyThread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavafx/concurrent/Task;->modifyThreadPerm:Ljava/security/Permission;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    new-instance v2, Ljavafx/concurrent/Task$TaskCallable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/concurrent/Task$TaskCallable;-><init>(Ljavafx/concurrent/Task$1;)V

    invoke-direct {v1, v2}, Ljavafx/concurrent/Task;-><init>(Ljavafx/concurrent/Task$TaskCallable;)V

    .line 659
    return-void
.end method

.method private constructor <init>(Ljavafx/concurrent/Task$TaskCallable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/concurrent/Task$TaskCallable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 673
    move-object v1, p0

    .local v1, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v2, p1

    .local v2, "callableAdapter":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 625
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, v3, Ljavafx/concurrent/Task;->progressUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 632
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, v3, Ljavafx/concurrent/Task;->messageUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 639
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, v3, Ljavafx/concurrent/Task;->titleUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 646
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, v3, Ljavafx/concurrent/Task;->valueUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 652
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/concurrent/Task;->started:Z

    .line 691
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "state"

    sget-object v8, Ljavafx/concurrent/Worker$State;->READY:Ljavafx/concurrent/Worker$State;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->state:Ljavafx/beans/property/ObjectProperty;

    .line 958
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "value"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->value:Ljavafx/beans/property/ObjectProperty;

    .line 963
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "exception"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->exception:Ljavafx/beans/property/ObjectProperty;

    .line 968
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "workDone"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->workDone:Ljavafx/beans/property/DoubleProperty;

    .line 973
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "totalWork"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->totalWork:Ljavafx/beans/property/DoubleProperty;

    .line 978
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "progress"

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->progress:Ljavafx/beans/property/DoubleProperty;

    .line 983
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "running"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->running:Ljavafx/beans/property/BooleanProperty;

    .line 988
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleStringProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "message"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->message:Ljavafx/beans/property/StringProperty;

    .line 992
    move-object v3, v1

    new-instance v4, Ljavafx/beans/property/SimpleStringProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const-string v7, "title"

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/concurrent/Task;->title:Ljavafx/beans/property/StringProperty;

    .line 1240
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    .line 674
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/concurrent/Task$TaskCallable;->access$102(Ljavafx/concurrent/Task$TaskCallable;Ljavafx/concurrent/Task;)Ljavafx/concurrent/Task;

    move-result-object v3

    .line 675
    return-void
.end method

.method private _setException(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Throwable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->exception:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private _updateProgress(DD)V
    .locals 11

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-wide v1, p1

    .local v1, "workDone":D
    move-wide v3, p3

    .local v3, "max":D
    move-object v5, v0

    move-wide v6, v3

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/Task;->setTotalWork(D)V

    .line 1113
    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/Task;->setWorkDone(D)V

    .line 1114
    move-wide v5, v1

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 1115
    move-object v5, v0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/Task;->setProgress(D)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    div-double/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/Task;->setProgress(D)V

    goto :goto_0
.end method

.method static synthetic access$300(Ljavafx/concurrent/Task;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->messageUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/concurrent/Task;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/concurrent/Task;)Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->message:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/concurrent/Task;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/concurrent/Task;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->titleUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/concurrent/Task;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/concurrent/Task;)Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->title:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/concurrent/Task;
    return-object v0
.end method

.method static synthetic access$702(Ljavafx/concurrent/Task;Z)Z
    .locals 7

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/concurrent/Task;->started:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/concurrent/Task;
    return v0
.end method

.method static synthetic access$800(Ljavafx/concurrent/Task;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/concurrent/Task;->_setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/concurrent/Task;Z)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/concurrent/Task;->lambda$cancel$479(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/concurrent/Task;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->lambda$cancel$480()V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/concurrent/Task;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->lambda$updateProgress$481()V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/concurrent/Task;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->lambda$updateValue$482()V

    return-void
.end method

.method private checkThread()V
    .locals 5

    .prologue
    .line 1217
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/concurrent/Task;->started:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/Task;->isFxApplicationThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1218
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Task must only be used from the FX Application Thread"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1220
    :cond_0
    return-void
.end method

.method private getEventHelper()Ljavafx/concurrent/EventHelper;
    .locals 6

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    .line 1243
    move-object v1, v0

    new-instance v2, Ljavafx/concurrent/EventHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/concurrent/EventHelper;-><init>(Ljavafx/event/EventTarget;)V

    iput-object v2, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    .line 1245
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method private synthetic lambda$cancel$479(Z)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1010
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move v1, p1

    .local v1, "mayInterruptIfRunning":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method private synthetic lambda$cancel$480()V
    .locals 3

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Task;->setState(Ljavafx/concurrent/Worker$State;)V

    return-void
.end method

.method private synthetic lambda$updateProgress$481()V
    .locals 8

    .prologue
    .line 1105
    move-object v1, p0

    .local v1, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v3, v1

    iget-object v3, v3, Ljavafx/concurrent/Task;->progressUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/concurrent/Task$ProgressUpdate;

    move-object v2, v3

    .line 1106
    .local v2, "update":Ljavafx/concurrent/Task$ProgressUpdate;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Ljavafx/concurrent/Task$ProgressUpdate;->access$900(Ljavafx/concurrent/Task$ProgressUpdate;)D

    move-result-wide v4

    move-object v6, v2

    invoke-static {v6}, Ljavafx/concurrent/Task$ProgressUpdate;->access$1000(Ljavafx/concurrent/Task$ProgressUpdate;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/concurrent/Task;->_updateProgress(DD)V

    .line 1107
    return-void
.end method

.method private synthetic lambda$updateValue$482()V
    .locals 4

    .prologue
    .line 1208
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->valueUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setProgress(D)V
    .locals 7

    .prologue
    .line 979
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v3, v0

    iget-object v3, v3, Ljavafx/concurrent/Task;->progress:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method private setRunning(Z)V
    .locals 4

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->running:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method private setTotalWork(D)V
    .locals 7

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v3, v0

    iget-object v3, v3, Ljavafx/concurrent/Task;->totalWork:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method private setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 959
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setWorkDone(D)V
    .locals 7

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v3, v0

    iget-object v3, v3, Ljavafx/concurrent/Task;->workDone:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method


# virtual methods
.method public final addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    .line 1301
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1302
    return-void
.end method

.method public final addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1264
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    .line 1265
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1266
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 1361
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    .line 1362
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method protected abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final cancel()Z
    .locals 3

    .prologue
    .line 997
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Task;->cancel(Z)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return v0
.end method

.method public cancel(Z)Z
    .locals 5

    .prologue
    .line 1009
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move v1, p1

    .local v1, "mayInterruptIfRunning":Z
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Ljavafx/concurrent/Task$$Lambda$1;->lambdaFactory$(Ljavafx/concurrent/Task;Z)Ljava/security/PrivilegedAction;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v2, v3

    .line 1016
    .local v2, "flag":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 1024
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Task;->isFxApplicationThread()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1025
    move-object v3, v0

    sget-object v4, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v3, v4}, Ljavafx/concurrent/Task;->setState(Ljavafx/concurrent/Worker$State;)V

    .line 1031
    :cond_0
    :goto_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return v0

    .line 1027
    .restart local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    :cond_1
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/concurrent/Task$$Lambda$2;->lambdaFactory$(Ljavafx/concurrent/Task;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/concurrent/Task;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected cancelled()V
    .locals 0

    .prologue
    .line 911
    .local p0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-void
.end method

.method public final exceptionProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->exception:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method protected failed()V
    .locals 0

    .prologue
    .line 956
    .local p0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-void
.end method

.method public final fireEvent(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 1355
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    .line 1356
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->fireEvent(Ljavafx/event/Event;)V

    .line 1357
    return-void
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 965
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->exception:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 989
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->message:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final getOnCancelled()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 889
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnCancelled()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnFailed()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 934
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnFailed()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnRunning()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 799
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnRunning()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnScheduled()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 754
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnScheduled()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOnSucceeded()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 844
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->eventHelper:Ljavafx/concurrent/EventHelper;

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->getOnSucceeded()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getProgress()D
    .locals 3

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->progress:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-wide v0
.end method

.method public final getState()Ljavafx/concurrent/Worker$State;
    .locals 2

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->state:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/concurrent/Worker$State;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->title:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final getTotalWork()D
    .locals 3

    .prologue
    .line 975
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->totalWork:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-wide v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final getWorkDone()D
    .locals 3

    .prologue
    .line 970
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->workDone:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-wide v0
.end method

.method isFxApplicationThread()Z
    .locals 2

    .prologue
    .line 1231
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 985
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->running:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return v0
.end method

.method public final messageProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 990
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->message:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final onCancelledProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 877
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onCancelledProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final onFailedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 922
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onFailedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final onRunningProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 787
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onRunningProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final onScheduledProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 742
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onScheduledProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final onSucceededProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    .line 832
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/concurrent/EventHelper;->onSucceededProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final progressProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->progress:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    .line 1320
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1321
    return-void
.end method

.method public final removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1283
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    .line 1284
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1285
    return-void
.end method

.method runLater(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 1226
    return-void
.end method

.method protected running()V
    .locals 0

    .prologue
    .line 821
    .local p0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-void
.end method

.method public final runningProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 986
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->running:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method protected scheduled()V
    .locals 0

    .prologue
    .line 776
    .local p0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-void
.end method

.method protected final setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1338
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    .line 1339
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/concurrent/EventHelper;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1340
    return-void
.end method

.method public final setOnCancelled(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 900
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    .line 901
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnCancelled(Ljavafx/event/EventHandler;)V

    .line 902
    return-void
.end method

.method public final setOnFailed(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 945
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    .line 946
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnFailed(Ljavafx/event/EventHandler;)V

    .line 947
    return-void
.end method

.method public final setOnRunning(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    .line 811
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnRunning(Ljavafx/event/EventHandler;)V

    .line 812
    return-void
.end method

.method public final setOnScheduled(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    .line 766
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnScheduled(Ljavafx/event/EventHandler;)V

    .line 767
    return-void
.end method

.method public final setOnSucceeded(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->checkThread()V

    .line 856
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task;->getEventHelper()Ljavafx/concurrent/EventHelper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/EventHelper;->setOnSucceeded(Ljavafx/event/EventHandler;)V

    .line 857
    return-void
.end method

.method final setState(Ljavafx/concurrent/Worker$State;)V
    .locals 9

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/concurrent/Worker$State;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/concurrent/Task;->checkThread()V

    .line 694
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Task;->getState()Ljavafx/concurrent/Worker$State;

    move-result-object v3

    move-object v2, v3

    .line 695
    .local v2, "s":Ljavafx/concurrent/Worker$State;
    move-object v3, v2

    sget-object v4, Ljavafx/concurrent/Worker$State;->CANCELLED:Ljavafx/concurrent/Worker$State;

    if-eq v3, v4, :cond_2

    .line 696
    move-object v3, v0

    iget-object v3, v3, Ljavafx/concurrent/Task;->state:Ljavafx/beans/property/ObjectProperty;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 698
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    if-eq v4, v5, :cond_0

    move-object v4, v1

    sget-object v5, Ljavafx/concurrent/Worker$State;->RUNNING:Ljavafx/concurrent/Worker$State;

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-direct {v3, v4}, Ljavafx/concurrent/Task;->setRunning(Z)V

    .line 701
    sget-object v3, Ljavafx/concurrent/Task$3;->$SwitchMap$javafx$concurrent$Worker$State:[I

    move-object v4, v0

    iget-object v4, v4, Ljavafx/concurrent/Task;->state:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/concurrent/Worker$State;

    invoke-virtual {v4}, Ljavafx/concurrent/Worker$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 726
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Should be unreachable"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 698
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 703
    :pswitch_0
    move-object v3, v0

    new-instance v4, Ljavafx/concurrent/WorkerStateEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    sget-object v7, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_CANCELLED:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/concurrent/Task;->fireEvent(Ljavafx/event/Event;)V

    .line 704
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Task;->cancelled()V

    .line 705
    .line 729
    :cond_2
    :goto_1
    return-void

    .line 707
    :pswitch_1
    move-object v3, v0

    new-instance v4, Ljavafx/concurrent/WorkerStateEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    sget-object v7, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_FAILED:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/concurrent/Task;->fireEvent(Ljavafx/event/Event;)V

    .line 708
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Task;->failed()V

    .line 709
    goto :goto_1

    .line 713
    :pswitch_2
    goto :goto_1

    .line 715
    :pswitch_3
    move-object v3, v0

    new-instance v4, Ljavafx/concurrent/WorkerStateEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    sget-object v7, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_RUNNING:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/concurrent/Task;->fireEvent(Ljavafx/event/Event;)V

    .line 716
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Task;->running()V

    .line 717
    goto :goto_1

    .line 719
    :pswitch_4
    move-object v3, v0

    new-instance v4, Ljavafx/concurrent/WorkerStateEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    sget-object v7, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_SCHEDULED:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/concurrent/Task;->fireEvent(Ljavafx/event/Event;)V

    .line 720
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Task;->scheduled()V

    .line 721
    goto :goto_1

    .line 723
    :pswitch_5
    move-object v3, v0

    new-instance v4, Ljavafx/concurrent/WorkerStateEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    sget-object v7, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_SUCCEEDED:Ljavafx/event/EventType;

    invoke-direct {v5, v6, v7}, Ljavafx/concurrent/WorkerStateEvent;-><init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V

    invoke-virtual {v3, v4}, Ljavafx/concurrent/Task;->fireEvent(Ljavafx/event/Event;)V

    .line 724
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/concurrent/Task;->succeeded()V

    .line 725
    goto :goto_1

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final stateProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/concurrent/Worker$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->state:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method protected succeeded()V
    .locals 0

    .prologue
    .line 866
    .local p0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-void
.end method

.method public final titleProperty()Ljavafx/beans/property/ReadOnlyStringProperty;
    .locals 2

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->title:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final totalWorkProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 976
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->totalWork:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method protected updateMessage(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1135
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->isFxApplicationThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1136
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->message:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->messageUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1143
    move-object v2, v0

    new-instance v3, Ljavafx/concurrent/Task$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/concurrent/Task$1;-><init>(Ljavafx/concurrent/Task;)V

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected updateProgress(DD)V
    .locals 15

    .prologue
    .line 1080
    move-object v1, p0

    .local v1, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-wide/from16 v2, p1

    .local v2, "workDone":D
    move-wide/from16 v4, p3

    .local v4, "max":D
    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1081
    :cond_0
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v2, v6

    .line 1084
    :cond_1
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_2

    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1085
    :cond_2
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v4, v6

    .line 1088
    :cond_3
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 1089
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v2, v6

    .line 1092
    :cond_4
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    .line 1093
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v4, v6

    .line 1097
    :cond_5
    move-wide v6, v2

    move-wide v8, v4

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    .line 1098
    move-wide v6, v4

    move-wide v2, v6

    .line 1101
    :cond_6
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/concurrent/Task;->isFxApplicationThread()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1102
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/concurrent/Task;->_updateProgress(DD)V

    .line 1109
    :cond_7
    :goto_0
    return-void

    .line 1103
    :cond_8
    move-object v6, v1

    iget-object v6, v6, Ljavafx/concurrent/Task;->progressUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v7, Ljavafx/concurrent/Task$ProgressUpdate;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-wide v9, v2

    move-wide v11, v4

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Ljavafx/concurrent/Task$ProgressUpdate;-><init>(DDLjavafx/concurrent/Task$1;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1104
    move-object v6, v1

    move-object v7, v1

    invoke-static {v7}, Ljavafx/concurrent/Task$$Lambda$3;->lambdaFactory$(Ljavafx/concurrent/Task;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/concurrent/Task;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected updateProgress(JJ)V
    .locals 11

    .prologue
    .line 1055
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-wide v1, p1

    .local v1, "workDone":J
    move-wide v3, p3

    .local v3, "max":J
    move-object v5, v0

    move-wide v6, v1

    long-to-double v6, v6

    move-wide v8, v3

    long-to-double v8, v8

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/concurrent/Task;->updateProgress(DD)V

    .line 1056
    return-void
.end method

.method protected updateTitle(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1167
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->isFxApplicationThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1168
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->title:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->titleUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1175
    move-object v2, v0

    new-instance v3, Ljavafx/concurrent/Task$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/concurrent/Task$2;-><init>(Ljavafx/concurrent/Task;)V

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected updateValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->isFxApplicationThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1201
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task;->valueUpdate:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1208
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/concurrent/Task$$Lambda$4;->lambdaFactory$(Ljavafx/concurrent/Task;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final valueProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 961
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method

.method public final workDoneProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task;->checkThread()V

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task;->workDone:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/Task;, "Ljavafx/concurrent/Task<TV;>;"
    return-object v0
.end method
