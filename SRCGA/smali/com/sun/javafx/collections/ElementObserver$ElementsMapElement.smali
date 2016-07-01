.class Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
.super Ljava/lang/Object;
.source "ElementObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ElementObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementsMapElement"
.end annotation


# instance fields
.field counter:I

.field listener:Ljavafx/beans/InvalidationListener;


# direct methods
.method public constructor <init>(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->listener:Ljavafx/beans/InvalidationListener;

    .line 42
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->counter:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->getListener()Ljavafx/beans/InvalidationListener;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    return-object v0
.end method

.method private getListener()Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->listener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    return-object v0
.end method


# virtual methods
.method public decrement()I
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->counter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->counter:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    return v0
.end method

.method public increment()V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->counter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->counter:I

    .line 47
    return-void
.end method
