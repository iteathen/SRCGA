.class Ljavafx/scene/SubScene$6;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "SubScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/SubScene;->userAgentStylesheetProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/SubScene;


# direct methods
.method constructor <init>(Ljavafx/scene/SubScene;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/SubScene;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/SubScene$6;->this$0:Ljavafx/scene/SubScene;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$6;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/SubScene$6;->this$0:Ljavafx/scene/SubScene;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/css/StyleManager;->forget(Ljavafx/scene/SubScene;)V

    .line 613
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene$6;->this$0:Ljavafx/scene/SubScene;

    invoke-virtual {v1}, Ljavafx/scene/SubScene;->impl_reapplyCSS()V

    .line 614
    return-void
.end method
