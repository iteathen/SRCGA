.class Lcom/sun/javafx/scene/control/skin/FXVK$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "FXVK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/FXVK;->attachedNodeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVK;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVK;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/FXVK$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVK$1;->this$0:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVK$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVK$1;
    const-string v1, "attachedNode"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVK$1;
    return-object v0
.end method
