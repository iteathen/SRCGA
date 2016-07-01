.class Ljavafx/scene/Scene$12;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene;->userAgentStylesheetProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$12;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/Scene$12;->this$0:Ljavafx/scene/Scene;

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
    .line 1557
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$12;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$12;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/css/StyleManager;->forget(Ljavafx/scene/Scene;)V

    .line 1558
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$12;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v1}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Parent;->impl_reapplyCSS()V

    .line 1559
    return-void
.end method
