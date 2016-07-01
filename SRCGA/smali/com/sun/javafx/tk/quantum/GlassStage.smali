.class abstract Lcom/sun/javafx/tk/quantum/GlassStage;
.super Ljava/lang/Object;
.source "GlassStage.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKStage;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final activeFSWindow:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/sun/javafx/tk/quantum/GlassStage;",
            ">;"
        }
    .end annotation
.end field

.field private static importantWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/tk/TKStage;",
            ">;"
        }
    .end annotation
.end field

.field private static final javaSecurityAccess:Lsun/misc/JavaSecurityAccess;

.field private static final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/tk/quantum/GlassStage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessCtrlCtx:Ljava/security/AccessControlContext;

.field private important:Z

.field private scene:Lcom/sun/javafx/tk/quantum/GlassScene;

.field protected stageListener:Lcom/sun/javafx/tk/TKStageListener;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/sun/javafx/tk/quantum/GlassStage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/GlassStage;->$assertionsDisabled:Z

    .line 49
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaSecurityAccess()Lsun/misc/JavaSecurityAccess;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/GlassStage;->javaSecurityAccess:Lsun/misc/JavaSecurityAccess;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/GlassStage;->importantWindows:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/GlassStage;->activeFSWindow:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/GlassStage;->important:Z

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassStage;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 71
    sget-object v1, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 72
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/security/AccessControlContext;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassStage;->lambda$setSecurityContext$286()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/GlassStage;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassStage;->lambda$requestClosingAllWindows$287(Lcom/sun/javafx/tk/quantum/GlassStage;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static synthetic lambda$requestClosingAllWindows$287(Lcom/sun/javafx/tk/quantum/GlassStage;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "window":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKStageListener;->closing()V

    .line 198
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "window":Lcom/sun/javafx/tk/quantum/GlassStage;
    return-object v0
.end method

.method private static synthetic lambda$setSecurityContext$286()Ljava/security/AccessControlContext;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method private static notifyWindowListeners()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/tk/quantum/GlassStage;->importantWindows:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->notifyWindowListeners(Ljava/util/List;)V

    .line 183
    return-void
.end method

.method static requestClosingAllWindows()V
    .locals 7

    .prologue
    .line 187
    sget-object v5, Lcom/sun/javafx/tk/quantum/GlassStage;->activeFSWindow:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/tk/quantum/GlassStage;

    move-object v0, v5

    .line 188
    .local v0, "fsWindow":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v5, v0

    if-eqz v5, :cond_0

    .line 189
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassStage;->setFullScreen(Z)V

    .line 192
    :cond_0
    sget-object v5, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    sget-object v6, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sun/javafx/tk/quantum/GlassStage;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sun/javafx/tk/quantum/GlassStage;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 195
    .local v4, "window":Lcom/sun/javafx/tk/quantum/GlassStage;
    sget-object v5, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/GlassStage;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    if-eqz v5, :cond_1

    .line 196
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/GlassStage$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassStage;)Ljava/security/PrivilegedAction;

    move-result-object v5

    move-object v6, v4

    .line 199
    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/GlassStage;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v6

    .line 196
    invoke-static {v5, v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v5

    .line 192
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v4    # "window":Lcom/sun/javafx/tk/quantum/GlassStage;
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/GlassStage;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 76
    :cond_0
    sget-object v1, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 77
    sget-object v1, Lcom/sun/javafx/tk/quantum/GlassStage;->importantWindows:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 78
    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassStage;->notifyWindowListeners()V

    .line 79
    return-void
.end method

.method final getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassStage;->accessCtrlCtx:Ljava/security/AccessControlContext;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Stage security context has not been set!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassStage;->accessCtrlCtx:Ljava/security/AccessControlContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    return-object v0
.end method

.method protected final getScene()Lcom/sun/javafx/tk/quantum/GlassScene;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    return-object v0
.end method

.method isVisible()Z
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/GlassStage;->visible:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    return v0
.end method

.method public requestFocus()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public requestFocus(Lcom/sun/javafx/tk/FocusCause;)V
    .locals 0
    .param p1, "cause"    # Lcom/sun/javafx/tk/FocusCause;

    .prologue
    .line 127
    return-void
.end method

.method public setImportant(Z)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move v1, p1

    .local v1, "important":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->important:Z

    .line 179
    return-void
.end method

.method protected setPlatformEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 159
    return-void
.end method

.method public setScene(Lcom/sun/javafx/tk/TKScene;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/TKScene;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->setStage(Lcom/sun/javafx/tk/quantum/GlassStage;)V

    .line 98
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/tk/quantum/GlassScene;

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    if-eqz v2, :cond_1

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->setStage(Lcom/sun/javafx/tk/quantum/GlassStage;)V

    .line 102
    :cond_1
    return-void
.end method

.method public final setSecurityContext(Ljava/security/AccessControlContext;)V
    .locals 9

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v1, p1

    .local v1, "ctx":Ljava/security/AccessControlContext;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassStage;->accessCtrlCtx:Ljava/security/AccessControlContext;

    if-eqz v3, :cond_0

    .line 114
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Stage security context has been already set!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    move-object v2, v3

    .line 119
    .local v2, "acc":Ljava/security/AccessControlContext;
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/tk/quantum/GlassStage;->javaSecurityAccess:Lsun/misc/JavaSecurityAccess;

    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassStage$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    move-object v6, v2

    move-object v7, v1

    invoke-interface {v4, v5, v6, v7}, Lsun/misc/JavaSecurityAccess;->doIntersectionPrivilege(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/AccessControlContext;

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/GlassStage;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 121
    return-void
.end method

.method public setTKStageListener(Lcom/sun/javafx/tk/TKStageListener;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKStageListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    .line 88
    return-void
.end method

.method public setVisible(Z)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->visible:Z

    .line 136
    move v2, v1

    if-eqz v2, :cond_2

    .line 137
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->important:Z

    if-eqz v2, :cond_0

    .line 138
    sget-object v2, Lcom/sun/javafx/tk/quantum/GlassStage;->importantWindows:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 139
    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassStage;->notifyWindowListeners()V

    .line 147
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    if-eqz v2, :cond_1

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->stageVisible(Z)V

    .line 150
    :cond_1
    return-void

    .line 142
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/tk/quantum/GlassStage;->important:Z

    if-eqz v2, :cond_0

    .line 143
    sget-object v2, Lcom/sun/javafx/tk/quantum/GlassStage;->importantWindows:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 144
    invoke-static {}, Lcom/sun/javafx/tk/quantum/GlassStage;->notifyWindowListeners()V

    goto :goto_0
.end method

.method windowsSetEnabled(Z)V
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassStage;
    move v1, p1

    .local v1, "enabled":Z
    sget-object v6, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    sget-object v7, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/sun/javafx/tk/quantum/GlassStage;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sun/javafx/tk/quantum/GlassStage;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 170
    .local v5, "window":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v6, v5

    move-object v7, v0

    if-eq v6, v7, :cond_0

    sget-object v6, Lcom/sun/javafx/tk/quantum/GlassStage;->windows:Ljava/util/List;

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/tk/quantum/GlassStage;->setPlatformEnabled(Z)V

    .line 169
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .end local v5    # "window":Lcom/sun/javafx/tk/quantum/GlassStage;
    :cond_1
    return-void
.end method
