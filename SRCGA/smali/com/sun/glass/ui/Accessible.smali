.class public abstract Lcom/sun/glass/ui/Accessible;
.super Ljava/lang/Object;
.source "Accessible.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Accessible$ExecuteAction;,
        Lcom/sun/glass/ui/Accessible$GetAttribute;,
        Lcom/sun/glass/ui/Accessible$EventHandler;
    }
.end annotation


# instance fields
.field private eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

.field private executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

.field private getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

.field private view:Lcom/sun/glass/ui/View;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 161
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/Accessible$GetAttribute;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/Accessible$GetAttribute;-><init>(Lcom/sun/glass/ui/Accessible;Lcom/sun/glass/ui/Accessible$1;)V

    iput-object v2, v1, Lcom/sun/glass/ui/Accessible;->getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

    .line 182
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/Accessible$ExecuteAction;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/Accessible$ExecuteAction;-><init>(Lcom/sun/glass/ui/Accessible;Lcom/sun/glass/ui/Accessible$1;)V

    iput-object v2, v1, Lcom/sun/glass/ui/Accessible;->executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

    return-void
.end method

.method static synthetic access$000(Lcom/sun/glass/ui/Accessible;)Lcom/sun/glass/ui/Accessible$EventHandler;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/Accessible;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/Accessible;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Accessible;->lambda$getAttribute$4(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Void;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Accessible;->lambda$executeAction$5(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Void;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private final getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    const/4 v3, 0x0

    move-object v1, v3

    .line 131
    .local v1, "acc":Ljava/security/AccessControlContext;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Accessible$EventHandler;->getAccessControlContext()Ljava/security/AccessControlContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 134
    .line 135
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    return-object v0

    .line 132
    .restart local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method private synthetic lambda$executeAction$5(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v3, p3

    .local v3, "acc":Ljava/security/AccessControlContext;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Accessible;->executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/glass/ui/Accessible$ExecuteAction;->action:Ljavafx/scene/AccessibleAction;

    .line 189
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Accessible;->executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/glass/ui/Accessible$ExecuteAction;->parameters:[Ljava/lang/Object;

    .line 190
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Accessible;->executeAction:Lcom/sun/glass/ui/Accessible$ExecuteAction;

    move-object v5, v3

    invoke-static {v4, v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    return-object v0
.end method

.method private synthetic lambda$getAttribute$4(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v3, p3

    .local v3, "acc":Ljava/security/AccessControlContext;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Accessible;->getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/glass/ui/Accessible$GetAttribute;->attribute:Ljavafx/scene/AccessibleAttribute;

    .line 168
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Accessible;->getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/glass/ui/Accessible$GetAttribute;->parameters:[Ljava/lang/Object;

    .line 169
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Accessible;->getAttribute:Lcom/sun/glass/ui/Accessible$GetAttribute;

    move-object v5, v3

    invoke-static {v4, v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    .line 76
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/Accessible;->view:Lcom/sun/glass/ui/View;

    .line 77
    return-void
.end method

.method public varargs executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/glass/ui/Accessible;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v4

    move-object v3, v4

    .line 186
    .local v3, "acc":Ljava/security/AccessControlContext;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/glass/ui/Accessible$$Lambda$2;->lambdaFactory$(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/util/function/Supplier;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    goto :goto_0
.end method

.method protected getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 103
    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/scene/NodeHelper;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method protected getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 98
    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/scene/SceneHelper;->getAccessible(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public varargs getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/glass/ui/Accessible;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v4

    move-object v3, v4

    .line 165
    .local v3, "acc":Ljava/security/AccessControlContext;
    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 166
    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/glass/ui/Accessible$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/util/function/Supplier;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method protected getContainerAccessible(Ljavafx/scene/AccessibleRole;)Lcom/sun/glass/ui/Accessible;
    .locals 8

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "targetRole":Ljavafx/scene/AccessibleRole;
    move-object v5, v0

    sget-object v6, Ljavafx/scene/AccessibleAttribute;->PARENT:Ljavafx/scene/AccessibleAttribute;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v2, v5

    .line 115
    .local v2, "node":Ljavafx/scene/Node;
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 116
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/Accessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v5

    move-object v3, v5

    .line 117
    .local v3, "acc":Lcom/sun/glass/ui/Accessible;
    move-object v5, v3

    sget-object v6, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/AccessibleRole;

    move-object v4, v5

    .line 118
    .local v4, "role":Ljavafx/scene/AccessibleRole;
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_0

    move-object v5, v3

    move-object v0, v5

    .line 121
    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    .end local v3    # "acc":Lcom/sun/glass/ui/Accessible;
    .end local v4    # "role":Ljavafx/scene/AccessibleRole;
    :goto_1
    return-object v0

    .line 119
    .restart local v0    # "this":Lcom/sun/glass/ui/Accessible;
    .restart local v3    # "acc":Lcom/sun/glass/ui/Accessible;
    .restart local v4    # "role":Ljavafx/scene/AccessibleRole;
    :cond_0
    move-object v5, v3

    sget-object v6, Ljavafx/scene/AccessibleAttribute;->PARENT:Ljavafx/scene/AccessibleAttribute;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v2, v5

    .line 120
    goto :goto_0

    .line 121
    .end local v3    # "acc":Lcom/sun/glass/ui/Accessible;
    .end local v4    # "role":Ljavafx/scene/AccessibleRole;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public getEventHandler()Lcom/sun/glass/ui/Accessible$EventHandler;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    return-object v0
.end method

.method protected abstract getNativeAccessible()J
.end method

.method protected getNativeAccessible(Ljavafx/scene/Node;)J
    .locals 6

    .prologue
    .line 107
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Accessible;
    move-object v2, p1

    .local v2, "node":Ljavafx/scene/Node;
    move-object v4, v2

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 110
    .end local v1    # "this":Lcom/sun/glass/ui/Accessible;
    :goto_0
    return-wide v1

    .line 108
    .restart local v1    # "this":Lcom/sun/glass/ui/Accessible;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/Accessible;->getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v4

    move-object v3, v4

    .line 109
    .local v3, "acc":Lcom/sun/glass/ui/Accessible;
    move-object v4, v3

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    move-wide v1, v4

    goto :goto_0

    .line 110
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/glass/ui/Accessible;->getNativeAccessible()J

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public getView()Lcom/sun/glass/ui/View;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Accessible;->view:Lcom/sun/glass/ui/View;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    return-object v0
.end method

.method public isDisposed()Z
    .locals 6

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Accessible;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/Accessible;->getNativeAccessible()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/glass/ui/Accessible;
    return v1

    .restart local v1    # "this":Lcom/sun/glass/ui/Accessible;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isIgnored()Z
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->ROLE:Ljavafx/scene/AccessibleAttribute;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Accessible;->getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/AccessibleRole;

    move-object v1, v2

    .line 90
    .local v1, "role":Ljavafx/scene/AccessibleRole;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 91
    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Accessible;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    if-eq v2, v3, :cond_1

    move-object v2, v1

    sget-object v3, Ljavafx/scene/AccessibleRole;->PARENT:Ljavafx/scene/AccessibleRole;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public abstract sendNotification(Ljavafx/scene/AccessibleAttribute;)V
.end method

.method public setEventHandler(Lcom/sun/glass/ui/Accessible$EventHandler;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "eventHandler":Lcom/sun/glass/ui/Accessible$EventHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    .line 64
    return-void
.end method

.method public setView(Lcom/sun/glass/ui/View;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Accessible;->view:Lcom/sun/glass/ui/View;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Accessible;->eventHandler:Lcom/sun/glass/ui/Accessible$EventHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible;
    return-object v0
.end method
