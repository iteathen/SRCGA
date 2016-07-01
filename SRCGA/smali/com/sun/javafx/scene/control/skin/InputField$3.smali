.class Lcom/sun/javafx/scene/control/skin/InputField$3;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "InputField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/InputField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/ActionEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/InputField;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/InputField;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/InputField$3;->this$0:Lcom/sun/javafx/scene/control/skin/InputField;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField$3;->this$0:Lcom/sun/javafx/scene/control/skin/InputField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$3;
    const-string v1, "onAction"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField$3;->this$0:Lcom/sun/javafx/scene/control/skin/InputField;

    sget-object v2, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/InputField$3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/InputField;->access$000(Lcom/sun/javafx/scene/control/skin/InputField;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 112
    return-void
.end method
