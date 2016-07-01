.class final Ljavafx/scene/layout/Region$InsetsProperty;
.super Ljavafx/beans/property/ReadOnlyObjectProperty;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InsetsProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectProperty",
        "<",
        "Ljavafx/geometry/Insets;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:Ljavafx/geometry/Insets;

.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method private constructor <init>(Ljavafx/scene/layout/Region;)V
    .locals 4

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectProperty;-><init>()V

    .line 747
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/layout/Region$InsetsProperty;->cache:Ljavafx/geometry/Insets;

    .line 748
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/layout/Region;Ljavafx/scene/layout/Region$1;)V
    .locals 5

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/layout/Region;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/layout/Region$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/layout/Region$InsetsProperty;-><init>(Ljavafx/scene/layout/Region;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 755
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/geometry/Insets;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/geometry/Insets;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 763
    return-void
.end method

.method fireValueChanged()V
    .locals 3

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/Region$InsetsProperty;->cache:Ljavafx/geometry/Insets;

    .line 771
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v1}, Ljavafx/scene/layout/Region;->access$200(Ljavafx/scene/layout/Region;)V

    .line 772
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->requestLayout()V

    .line 773
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 774
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/Region$InsetsProperty;->get()Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$InsetsProperty;
    return-object v0
.end method

.method public get()Ljavafx/geometry/Insets;
    .locals 19

    .prologue
    .line 779
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v5}, Ljavafx/scene/layout/Region;->access$1600(Ljavafx/scene/layout/Region;)Ljavafx/scene/shape/Shape;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-virtual {v5}, Ljavafx/scene/layout/Region;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v5

    move-object v1, v5

    .line 805
    .end local v1    # "this":Ljavafx/scene/layout/Region$InsetsProperty;
    .local v2, "b":Ljavafx/scene/layout/Border;
    :goto_0
    return-object v1

    .line 783
    .end local v2    # "b":Ljavafx/scene/layout/Border;
    .restart local v1    # "this":Ljavafx/scene/layout/Region$InsetsProperty;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-virtual {v5}, Ljavafx/scene/layout/Region;->getBorder()Ljavafx/scene/layout/Border;

    move-result-object v5

    move-object v2, v5

    .line 784
    .restart local v2    # "b":Ljavafx/scene/layout/Border;
    move-object v5, v2

    if-eqz v5, :cond_1

    sget-object v5, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/layout/Border;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 785
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-virtual {v5}, Ljavafx/scene/layout/Region;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 790
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/Region$InsetsProperty;->cache:Ljavafx/geometry/Insets;

    if-nez v5, :cond_3

    .line 796
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/layout/Border;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v5

    move-object v3, v5

    .line 797
    .local v3, "borderInsets":Ljavafx/geometry/Insets;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-virtual {v5}, Ljavafx/scene/layout/Region;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v5

    move-object v4, v5

    .line 798
    .local v4, "paddingInsets":Ljavafx/geometry/Insets;
    move-object v5, v1

    new-instance v6, Ljavafx/geometry/Insets;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    move-object v8, v3

    .line 799
    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v3

    .line 800
    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v3

    .line 801
    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v3

    .line 802
    invoke-virtual {v14}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v14

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-direct/range {v7 .. v15}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    iput-object v6, v5, Ljavafx/scene/layout/Region$InsetsProperty;->cache:Ljavafx/geometry/Insets;

    .line 805
    .end local v3    # "borderInsets":Ljavafx/geometry/Insets;
    .end local v4    # "paddingInsets":Ljavafx/geometry/Insets;
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/Region$InsetsProperty;->cache:Ljavafx/geometry/Insets;

    move-object v1, v5

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$InsetsProperty;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$InsetsProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    const-string v1, "insets"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$InsetsProperty;
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 759
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/geometry/Insets;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$InsetsProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/geometry/Insets;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/layout/Region$InsetsProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 767
    return-void
.end method
