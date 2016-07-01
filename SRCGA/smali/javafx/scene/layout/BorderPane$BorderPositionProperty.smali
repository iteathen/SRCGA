.class final Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "BorderPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/BorderPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BorderPositionProperty"
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
.field private isBeingInvalidated:Z

.field private oldValue:Ljavafx/scene/Node;

.field private final propertyName:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/scene/layout/BorderPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/BorderPane;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    move-object v1, p1

    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->this$0:Ljavafx/scene/layout/BorderPane;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 638
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->oldValue:Ljavafx/scene/Node;

    .line 643
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->propertyName:Ljava/lang/String;

    .line 644
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/BorderPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    new-instance v4, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty$1;-><init>(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;Ljavafx/scene/layout/BorderPane;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 664
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->oldValue:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    return-object v0
.end method

.method static synthetic access$002(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->oldValue:Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/layout/BorderPane$BorderPositionProperty;)Z
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->isBeingInvalidated:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    return v0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->this$0:Ljavafx/scene/layout/BorderPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->propertyName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderPane$BorderPositionProperty;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->this$0:Ljavafx/scene/layout/BorderPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/BorderPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v1, v4

    .line 670
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->isBeingInvalidated:Z

    .line 672
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->oldValue:Ljavafx/scene/Node;

    if-eqz v4, :cond_0

    .line 673
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->oldValue:Ljavafx/scene/Node;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 676
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v2, v4

    .line 677
    .local v2, "_value":Ljavafx/scene/Node;
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->oldValue:Ljavafx/scene/Node;

    .line 679
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 680
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 683
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->isBeingInvalidated:Z

    .line 684
    .line 685
    return-void

    .line 683
    .end local v2    # "_value":Ljavafx/scene/Node;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/layout/BorderPane$BorderPositionProperty;->isBeingInvalidated:Z

    move-object v4, v3

    throw v4
.end method
