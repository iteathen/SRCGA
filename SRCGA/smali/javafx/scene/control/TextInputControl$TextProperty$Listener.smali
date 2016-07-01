.class Ljavafx/scene/control/TextInputControl$TextProperty$Listener;
.super Ljava/lang/Object;
.source "TextInputControl.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextInputControl$TextProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/control/TextInputControl$TextProperty;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/TextInputControl$TextProperty;)V
    .locals 4

    .prologue
    .line 1425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty$Listener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty$Listener;->this$1:Ljavafx/scene/control/TextInputControl$TextProperty;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/TextInputControl$TextProperty;Ljavafx/scene/control/TextInputControl$1;)V
    .locals 5

    .prologue
    .line 1425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty$Listener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/control/TextInputControl$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TextInputControl$TextProperty$Listener;-><init>(Ljavafx/scene/control/TextInputControl$TextProperty;)V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 1433
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty$Listener;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty$Listener;->this$1:Ljavafx/scene/control/TextInputControl$TextProperty;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextProperty$Listener;->this$1:Ljavafx/scene/control/TextInputControl$TextProperty;

    invoke-static {v3}, Ljavafx/scene/control/TextInputControl$TextProperty;->access$1100(Ljavafx/scene/control/TextInputControl$TextProperty;)Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Ljavafx/scene/control/TextInputControl$TextProperty;->access$1200(Ljavafx/scene/control/TextInputControl$TextProperty;Ljava/lang/String;)V

    .line 1434
    return-void
.end method
