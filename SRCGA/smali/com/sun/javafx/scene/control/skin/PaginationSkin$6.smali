.class Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
.super Ljavafx/css/StyleableObjectProperty;
.source "PaginationSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/PaginationSkin;->pageInformationAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Side;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/geometry/Side;)V
    .locals 5

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Side;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Pagination;",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
    # getter for: Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->PAGE_INFORMATION_ALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->access$1100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
    const-string v1, "pageInformationAlignment"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$6;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->requestLayout()V

    .line 597
    return-void
.end method
