.class public abstract Lcom/sun/glass/ui/Accessible$EventHandler;
.super Ljava/lang/Object;
.source "Accessible.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Accessible;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$EventHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs executeAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljavafx/scene/AccessibleAction;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 53
    return-void
.end method

.method public abstract getAccessControlContext()Ljava/security/AccessControlContext;
.end method

.method public varargs getAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Accessible$EventHandler;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Accessible$EventHandler;
    return-object v0
.end method
