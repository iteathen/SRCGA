.class Lcom/sun/glass/ui/Accessible$ExecuteAction;
.super Ljava/lang/Object;
.source "Accessible.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Accessible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecuteAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field action:Ljavafx/scene/AccessibleAction;

.field parameters:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/glass/ui/Accessible;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/Accessible;)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$ExecuteAction;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Accessible$ExecuteAction;->this$0:Lcom/sun/glass/ui/Accessible;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/Accessible;Lcom/sun/glass/ui/Accessible$1;)V
    .locals 5

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$ExecuteAction;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/Accessible;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/glass/ui/Accessible$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/Accessible$ExecuteAction;-><init>(Lcom/sun/glass/ui/Accessible;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$ExecuteAction;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Accessible$ExecuteAction;->run()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible$ExecuteAction;
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$ExecuteAction;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Accessible$ExecuteAction;->this$0:Lcom/sun/glass/ui/Accessible;

    invoke-static {v1}, Lcom/sun/glass/ui/Accessible;->access$000(Lcom/sun/glass/ui/Accessible;)Lcom/sun/glass/ui/Accessible$EventHandler;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Accessible$ExecuteAction;->action:Ljavafx/scene/AccessibleAction;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Accessible$ExecuteAction;->parameters:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Accessible$EventHandler;->executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 178
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible$ExecuteAction;
    return-object v0
.end method
