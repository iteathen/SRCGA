.class public Ljavafx/scene/control/Pagination;
.super Ljavafx/scene/control/Control;
.source "Pagination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/Pagination$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "pages"
.end annotation


# static fields
.field private static final DEFAULT_MAX_PAGE_INDICATOR_COUNT:I = 0xa

.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "pagination"

.field public static final INDETERMINATE:I = 0x7fffffff

.field public static final STYLE_CLASS_BULLET:Ljava/lang/String; = "bullet"


# instance fields
.field private final currentPageIndex:Ljavafx/beans/property/IntegerProperty;

.field private maxPageIndicatorCount:Ljavafx/beans/property/IntegerProperty;

.field private oldMaxPageIndicatorCount:I

.field private oldPageCount:I

.field private pageCount:Ljavafx/beans/property/IntegerProperty;

.field private pageFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/scene/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/Pagination;-><init>(II)V

    .line 150
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move v1, p1

    .local v1, "pageCount":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/Pagination;-><init>(II)V

    .line 142
    return-void
.end method

.method public constructor <init>(II)V
    .locals 11

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move v1, p1

    .local v1, "pageCount":I
    move v2, p2

    .local v2, "pageIndex":I
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Control;-><init>()V

    .line 158
    move-object v3, v0

    const/16 v4, 0xa

    iput v4, v3, Ljavafx/scene/control/Pagination;->oldMaxPageIndicatorCount:I

    .line 215
    move-object v3, v0

    const v4, 0x7fffffff

    iput v4, v3, Ljavafx/scene/control/Pagination;->oldPageCount:I

    .line 216
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Pagination$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    const-string v8, "pageCount"

    const v9, 0x7fffffff

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/Pagination$2;-><init>(Ljavafx/scene/control/Pagination;Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v4, v3, Ljavafx/scene/control/Pagination;->pageCount:Ljavafx/beans/property/IntegerProperty;

    .line 248
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Pagination$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    const-string v8, "currentPageIndex"

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/Pagination$3;-><init>(Ljavafx/scene/control/Pagination;Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v4, v3, Ljavafx/scene/control/Pagination;->currentPageIndex:Ljavafx/beans/property/IntegerProperty;

    .line 291
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const-string v7, "pageFactory"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/Pagination;->pageFactory:Ljavafx/beans/property/ObjectProperty;

    .line 128
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "pagination"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 129
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleRole;->PAGINATION:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Pagination;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 130
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Pagination;->setPageCount(I)V

    .line 131
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Pagination;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->maxPageIndicatorCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/Pagination;)I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/Pagination;->oldMaxPageIndicatorCount:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Pagination;
    return v0
.end method

.method static synthetic access$102(Ljavafx/scene/control/Pagination;I)I
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Pagination;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/control/Pagination;->oldMaxPageIndicatorCount:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/Pagination;
    return v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/Pagination;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->pageCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/Pagination;)I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/Pagination;->oldPageCount:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Pagination;
    return v0
.end method

.method static synthetic access$402(Ljavafx/scene/control/Pagination;I)I
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Pagination;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/control/Pagination;->oldPageCount:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/Pagination;
    return v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/Pagination;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->currentPageIndex:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Pagination;
    return-object v0
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
    .line 367
    # getter for: Ljavafx/scene/control/Pagination$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/Pagination$StyleableProperties;->access$600()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;-><init>(Ljavafx/scene/control/Pagination;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method public final currentPageIndexProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->currentPageIndex:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method public getControlCssMetaData()Ljava/util/List;
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
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    invoke-static {}, Ljavafx/scene/control/Pagination;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method public final getCurrentPageIndex()I
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->currentPageIndex:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return v0
.end method

.method public final getMaxPageIndicatorCount()I
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->maxPageIndicatorCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/16 v1, 0xa

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Pagination;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->maxPageIndicatorCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getPageCount()I
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->pageCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return v0
.end method

.method public final getPageFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->pageFactory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method public final maxPageIndicatorCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->maxPageIndicatorCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 185
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Pagination$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Pagination$1;-><init>(Ljavafx/scene/control/Pagination;I)V

    iput-object v2, v1, Ljavafx/scene/control/Pagination;->maxPageIndicatorCount:Ljavafx/beans/property/IntegerProperty;

    .line 212
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->maxPageIndicatorCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method public final pageCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->pageCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method public final pageFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/scene/Node;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Pagination;->pageFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Pagination;
    return-object v0
.end method

.method public final setCurrentPageIndex(I)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination;->currentPageIndex:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final setMaxPageIndicatorCount(I)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Pagination;->maxPageIndicatorCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final setPageCount(I)V
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination;->pageCount:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final setPageFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/scene/Node;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Pagination;->pageFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method
