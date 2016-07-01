.class public Ljavafx/scene/image/ImageView;
.super Ljavafx/scene/Node;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/image/ImageView$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "image"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "image-view"

.field public static final SMOOTH_DEFAULT:Z


# instance fields
.field private destHeight:D

.field private destWidth:D

.field private fitHeight:Ljavafx/beans/property/DoubleProperty;

.field private fitWidth:Ljavafx/beans/property/DoubleProperty;

.field private image:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrl:Ljavafx/beans/property/StringProperty;

.field private oldImage:Ljavafx/scene/image/Image;

.field private final platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

.field private preserveRatio:Ljavafx/beans/property/BooleanProperty;

.field private smooth:Ljavafx/beans/property/BooleanProperty;

.field private validWH:Z

.field private viewport:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getDefaultImageSmooth()Z

    move-result v0

    sput-boolean v0, Ljavafx/scene/image/ImageView;->SMOOTH_DEFAULT:Z

    .line 585
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;-><init>()V

    .line 242
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->imageUrl:Ljavafx/beans/property/StringProperty;

    .line 283
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$3;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 147
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "image-view"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 148
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->IMAGE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/image/ImageView;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 149
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v1, v2}, Ljavafx/scene/image/ImageView;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljavafx/scene/image/Image;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljavafx/scene/image/ImageView;-><init>(Ljavafx/scene/image/Image;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/image/Image;)V
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;-><init>()V

    .line 242
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/image/ImageView;->imageUrl:Ljavafx/beans/property/StringProperty;

    .line 283
    move-object v2, v0

    new-instance v3, Ljavafx/scene/image/ImageView$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/image/ImageView$3;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v3, v2, Ljavafx/scene/image/ImageView;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 175
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/ImageView;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "image-view"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 176
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->IMAGE_VIEW:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 177
    move-object v2, v0

    sget-object v3, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 178
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->setImage(Ljavafx/scene/image/Image;)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/image/ImageView;)Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->oldImage:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method static synthetic access$002(Ljavafx/scene/image/ImageView;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/image/ImageView;->oldImage:Ljavafx/scene/image/Image;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/image/ImageView;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$1200(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1300(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$1400(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1500(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$1600(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1700(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/ImageView;->invalidateWidthHeight()V

    return-void
.end method

.method static synthetic access$2000(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$2100(Ljavafx/scene/image/ImageView;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->image:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method static synthetic access$2200(Ljavafx/scene/image/ImageView;)Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/ImageView;->imageUrlProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$800(Ljavafx/scene/image/ImageView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/image/ImageView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$900(Ljavafx/scene/image/ImageView;)V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/ImageView;->impl_geomChanged()V

    return-void
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 822
    # getter for: Ljavafx/scene/image/ImageView$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/image/ImageView$StyleableProperties;->access$2300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private imageUrlProperty()Ljavafx/beans/property/StringProperty;
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->imageUrl:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 250
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$2;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->imageUrl:Ljavafx/beans/property/StringProperty;

    .line 280
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->imageUrl:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method private invalidateWidthHeight()V
    .locals 3

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/image/ImageView;->validWH:Z

    .line 675
    return-void
.end method

.method private recomputeWidthHeight()V
    .locals 18

    .prologue
    .line 678
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/image/ImageView;
    move-object v12, v1

    iget-boolean v12, v12, Ljavafx/scene/image/ImageView;->validWH:Z

    if-eqz v12, :cond_0

    .line 679
    .line 720
    :goto_0
    return-void

    .line 681
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v12

    move-object v2, v12

    .line 682
    .local v2, "localImage":Ljavafx/scene/image/Image;
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/ImageView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v12

    move-object v3, v12

    .line 684
    .local v3, "localViewport":Ljavafx/geometry/Rectangle2D;
    const-wide/16 v12, 0x0

    move-wide v4, v12

    .line 685
    .local v4, "w":D
    const-wide/16 v12, 0x0

    move-wide v6, v12

    .line 686
    .local v6, "h":D
    move-object v12, v3

    if-eqz v12, :cond_5

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_5

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_5

    .line 687
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v12

    move-wide v4, v12

    .line 688
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v12

    move-wide v6, v12

    .line 694
    :cond_1
    :goto_1
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/ImageView;->getFitWidth()D

    move-result-wide v12

    move-wide v8, v12

    .line 695
    .local v8, "localFitWidth":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/ImageView;->getFitHeight()D

    move-result-wide v12

    move-wide v10, v12

    .line 697
    .local v10, "localFitHeight":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/ImageView;->isPreserveRatio()Z

    move-result v12

    if-eqz v12, :cond_7

    move-wide v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_7

    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_7

    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_7

    .line 698
    :cond_2
    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-lez v12, :cond_3

    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_6

    move-wide v12, v8

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-wide v14, v10

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    cmpl-double v12, v12, v14

    if-lez v12, :cond_6

    .line 699
    :cond_3
    move-wide v12, v4

    move-wide v14, v10

    mul-double/2addr v12, v14

    move-wide v14, v6

    div-double/2addr v12, v14

    move-wide v4, v12

    .line 700
    move-wide v12, v10

    move-wide v6, v12

    .line 716
    :cond_4
    :goto_2
    move-object v12, v1

    move-wide v13, v4

    iput-wide v13, v12, Ljavafx/scene/image/ImageView;->destWidth:D

    .line 717
    move-object v12, v1

    move-wide v13, v6

    iput-wide v13, v12, Ljavafx/scene/image/ImageView;->destHeight:D

    .line 719
    move-object v12, v1

    const/4 v13, 0x1

    iput-boolean v13, v12, Ljavafx/scene/image/ImageView;->validWH:Z

    .line 720
    goto/16 :goto_0

    .line 689
    .end local v8    # "localFitWidth":D
    .end local v10    # "localFitHeight":D
    :cond_5
    move-object v12, v2

    if-eqz v12, :cond_1

    .line 690
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v12

    move-wide v4, v12

    .line 691
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v12

    move-wide v6, v12

    goto :goto_1

    .line 702
    .restart local v8    # "localFitWidth":D
    .restart local v10    # "localFitHeight":D
    :cond_6
    move-wide v12, v6

    move-wide v14, v8

    mul-double/2addr v12, v14

    move-wide v14, v4

    div-double/2addr v12, v14

    move-wide v6, v12

    .line 703
    move-wide v12, v8

    move-wide v4, v12

    goto :goto_2

    .line 706
    :cond_7
    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_8

    .line 707
    move-wide v12, v8

    move-wide v4, v12

    .line 709
    :cond_8
    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_4

    .line 710
    move-wide v12, v10

    move-wide v6, v12

    goto :goto_2
.end method


# virtual methods
.method public final fitHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 444
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$7;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    .line 464
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method public final fitWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 396
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$6;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    .line 416
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    invoke-static {}, Ljavafx/scene/image/ImageView;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method public final getFitHeight()D
    .locals 4

    .prologue
    .line 439
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/ImageView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/ImageView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/image/ImageView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/ImageView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getFitWidth()D
    .locals 4

    .prologue
    .line 391
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/ImageView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/ImageView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/image/ImageView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/ImageView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getImage()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->image:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->image:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    goto :goto_0
.end method

.method public final getViewport()Ljavafx/geometry/Rectangle2D;
    .locals 2

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->viewport:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->viewport:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Rectangle2D;

    goto :goto_0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 305
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/ImageView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/ImageView;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/image/ImageView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/ImageView;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 345
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/ImageView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/ImageView;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/image/ImageView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/ImageView;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final imageProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->image:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 198
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$1;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->image:Ljavafx/beans/property/ObjectProperty;

    .line 239
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->image:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method protected impl_computeContains(DD)Z
    .locals 37
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 728
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/image/ImageView;
    move-wide/from16 v4, p1

    .local v4, "localX":D
    move-wide/from16 v6, p3

    .local v6, "localY":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v30

    if-nez v30, :cond_0

    .line 729
    const/16 v30, 0x0

    move/from16 v3, v30

    .line 775
    .end local v3    # "this":Ljavafx/scene/image/ImageView;
    :goto_0
    return v3

    .line 732
    .restart local v3    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Ljavafx/scene/image/ImageView;->recomputeWidthHeight()V

    .line 736
    move-wide/from16 v30, v4

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/image/ImageView;->getX()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-wide/from16 v8, v30

    .line 737
    .local v8, "dx":D
    move-wide/from16 v30, v6

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/image/ImageView;->getY()D

    move-result-wide v32

    sub-double v30, v30, v32

    move-wide/from16 v10, v30

    .line 739
    .local v10, "dy":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v30

    move-object/from16 v12, v30

    .line 740
    .local v12, "localImage":Ljavafx/scene/image/Image;
    move-object/from16 v30, v12

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v30

    move-wide/from16 v13, v30

    .line 741
    .local v13, "srcWidth":D
    move-object/from16 v30, v12

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v30

    move-wide/from16 v15, v30

    .line 742
    .local v15, "srcHeight":D
    move-wide/from16 v30, v13

    move-wide/from16 v17, v30

    .line 743
    .local v17, "viewWidth":D
    move-wide/from16 v30, v15

    move-wide/from16 v19, v30

    .line 744
    .local v19, "viewHeight":D
    const-wide/16 v30, 0x0

    move-wide/from16 v21, v30

    .line 745
    .local v21, "vw":D
    const-wide/16 v30, 0x0

    move-wide/from16 v23, v30

    .line 746
    .local v23, "vh":D
    const-wide/16 v30, 0x0

    move-wide/from16 v25, v30

    .line 747
    .local v25, "vminx":D
    const-wide/16 v30, 0x0

    move-wide/from16 v27, v30

    .line 748
    .local v27, "vminy":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/image/ImageView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v30

    move-object/from16 v29, v30

    .line 749
    .local v29, "localViewport":Ljavafx/geometry/Rectangle2D;
    move-object/from16 v30, v29

    if-eqz v30, :cond_1

    .line 750
    move-object/from16 v30, v29

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v30

    move-wide/from16 v21, v30

    .line 751
    move-object/from16 v30, v29

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v30

    move-wide/from16 v23, v30

    .line 752
    move-object/from16 v30, v29

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v30

    move-wide/from16 v25, v30

    .line 753
    move-object/from16 v30, v29

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v30

    move-wide/from16 v27, v30

    .line 756
    :cond_1
    move-wide/from16 v30, v21

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_2

    move-wide/from16 v30, v23

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_2

    .line 757
    move-wide/from16 v30, v21

    move-wide/from16 v17, v30

    .line 758
    move-wide/from16 v30, v23

    move-wide/from16 v19, v30

    .line 765
    :cond_2
    move-wide/from16 v30, v25

    move-wide/from16 v32, v8

    move-wide/from16 v34, v17

    mul-double v32, v32, v34

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Ljavafx/scene/image/ImageView;->destWidth:D

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v8, v30

    .line 766
    move-wide/from16 v30, v27

    move-wide/from16 v32, v10

    move-wide/from16 v34, v19

    mul-double v32, v32, v34

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-wide v0, v0, Ljavafx/scene/image/ImageView;->destHeight:D

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    add-double v30, v30, v32

    move-wide/from16 v10, v30

    .line 769
    move-wide/from16 v30, v8

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    move-wide/from16 v30, v10

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    move-wide/from16 v30, v8

    move-wide/from16 v32, v13

    cmpl-double v30, v30, v32

    if-gez v30, :cond_3

    move-wide/from16 v30, v10

    move-wide/from16 v32, v15

    cmpl-double v30, v30, v32

    if-gez v30, :cond_3

    move-wide/from16 v30, v8

    move-wide/from16 v32, v25

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    move-wide/from16 v30, v10

    move-wide/from16 v32, v27

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_3

    move-wide/from16 v30, v8

    move-wide/from16 v32, v25

    move-wide/from16 v34, v17

    add-double v32, v32, v34

    cmpl-double v30, v30, v32

    if-gez v30, :cond_3

    move-wide/from16 v30, v10

    move-wide/from16 v32, v27

    move-wide/from16 v34, v19

    add-double v32, v32, v34

    cmpl-double v30, v30, v32

    if-ltz v30, :cond_4

    .line 772
    :cond_3
    const/16 v30, 0x0

    move/from16 v3, v30

    goto/16 :goto_0

    .line 775
    :cond_4
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v30

    move-object/from16 v31, v12

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v31

    move-wide/from16 v32, v8

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move-wide/from16 v33, v10

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v30 .. v33}, Lcom/sun/javafx/tk/Toolkit;->imageContains(Ljava/lang/Object;FF)Z

    move-result v30

    move/from16 v3, v30

    goto/16 :goto_0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/image/ImageView;->recomputeWidthHeight()V

    .line 665
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/image/ImageView;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/image/ImageView;->getY()D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    move-object v7, v0

    .line 666
    invoke-virtual {v7}, Ljavafx/scene/image/ImageView;->getX()D

    move-result-wide v7

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/scene/image/ImageView;->destWidth:D

    add-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/image/ImageView;->getY()D

    move-result-wide v8

    move-object v10, v0

    iget-wide v10, v10, Ljavafx/scene/image/ImageView;->destHeight:D

    add-double/2addr v8, v10

    double-to-float v8, v8

    const/4 v9, 0x0

    .line 665
    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v1, v3

    .line 667
    move-object v3, v2

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v1, v3

    .line 668
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGImageView;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGImageView;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "alg":Lcom/sun/javafx/jmx/MXNodeAlgorithm;
    move-object v2, p2

    .local v2, "ctx":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/jmx/MXNodeAlgorithm;->processLeafNode(Ljavafx/scene/Node;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 860
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/ImageView;
    move-object v3, v1

    invoke-super {v3}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 862
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGImageView;

    move-object v2, v3

    .line 863
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/image/ImageView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 864
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/image/ImageView;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGImageView;->setX(F)V

    .line 865
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/image/ImageView;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGImageView;->setY(F)V

    .line 867
    :cond_0
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/image/ImageView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 868
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/image/ImageView;->isSmooth()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGImageView;->setSmooth(Z)V

    .line 870
    :cond_1
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/image/ImageView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 871
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGImageView;->setImage(Ljava/lang/Object;)V

    .line 874
    :cond_2
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/image/ImageView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/image/ImageView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 875
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->updateViewport()V

    .line 877
    :cond_4
    return-void

    .line 871
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final isPreserveRatio()Z
    .locals 2

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return v0

    .restart local v0    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isSmooth()Z
    .locals 2

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->smooth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    sget-boolean v1, Ljavafx/scene/image/ImageView;->SMOOTH_DEFAULT:Z

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return v0

    .restart local v0    # "this":Ljavafx/scene/image/ImageView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->smooth:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final preserveRatioProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 509
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$8;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    .line 529
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method public final setFitHeight(D)V
    .locals 7

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->fitHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 436
    return-void
.end method

.method public final setFitWidth(D)V
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->fitWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 388
    return-void
.end method

.method public final setImage(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/ImageView;->imageProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public final setPreserveRatio(Z)V
    .locals 4

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/ImageView;->preserveRatioProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 501
    return-void
.end method

.method public final setSmooth(Z)V
    .locals 4

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/ImageView;->smoothProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 553
    return-void
.end method

.method public final setViewport(Ljavafx/geometry/Rectangle2D;)V
    .locals 4

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Rectangle2D;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/ImageView;->viewportProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 302
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 342
    return-void
.end method

.method public final smoothProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->smooth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 561
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-boolean v5, Ljavafx/scene/image/ImageView;->SMOOTH_DEFAULT:Z

    invoke-direct {v3, v4, v5}, Ljavafx/scene/image/ImageView$9;-><init>(Ljavafx/scene/image/ImageView;Z)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->smooth:Ljavafx/beans/property/BooleanProperty;

    .line 579
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->smooth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method updateViewport()V
    .locals 11

    .prologue
    .line 838
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/image/ImageView;->recomputeWidthHeight()V

    .line 839
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 840
    .line 852
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v3

    move-object v1, v3

    .line 844
    .local v1, "localViewport":Ljavafx/geometry/Rectangle2D;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/image/ImageView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGImageView;

    move-object v2, v3

    .line 845
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGImageView;
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 846
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v1

    .line 847
    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/image/ImageView;->destWidth:D

    double-to-float v8, v8

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/scene/image/ImageView;->destHeight:D

    double-to-float v9, v9

    .line 846
    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/sg/prism/NGImageView;->setViewport(FFFFFF)V

    .line 852
    :goto_1
    goto :goto_0

    .line 850
    :cond_2
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/image/ImageView;->destWidth:D

    double-to-float v8, v8

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/scene/image/ImageView;->destHeight:D

    double-to-float v9, v9

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/sg/prism/NGImageView;->setViewport(FFFFFF)V

    goto :goto_1
.end method

.method public final viewportProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->viewport:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 613
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$10;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$10;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->viewport:Ljavafx/beans/property/ObjectProperty;

    .line 633
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->viewport:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 310
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$4;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->x:Ljavafx/beans/property/DoubleProperty;

    .line 329
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 350
    move-object v1, v0

    new-instance v2, Ljavafx/scene/image/ImageView$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/image/ImageView$5;-><init>(Ljavafx/scene/image/ImageView;)V

    iput-object v2, v1, Ljavafx/scene/image/ImageView;->y:Ljavafx/beans/property/DoubleProperty;

    .line 369
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/ImageView;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/ImageView;
    return-object v0
.end method
