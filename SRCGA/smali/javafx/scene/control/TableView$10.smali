.class Ljavafx/scene/control/TableView$10;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableView;->sortPolicyProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/TableView",
        "<TS;>;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableView;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V
    .locals 9

    .prologue
    .line 1223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$10;, "Ljavafx/scene/control/TableView$10;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableView<TS;>;Ljava/lang/Boolean;>;"
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/TableView$10;->this$0:Ljavafx/scene/control/TableView;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 2

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$10;, "Ljavafx/scene/control/TableView$10;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$10;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->sort()V

    .line 1226
    return-void
.end method
