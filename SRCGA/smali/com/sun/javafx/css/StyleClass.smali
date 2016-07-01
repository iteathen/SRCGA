.class final Lcom/sun/javafx/css/StyleClass;
.super Ljava/lang/Object;
.source "StyleClass.java"


# instance fields
.field private final index:I

.field private final styleClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClass;
    move-object v1, p1

    .local v1, "styleClassName":Ljava/lang/String;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/StyleClass;->styleClassName:Ljava/lang/String;

    .line 35
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/css/StyleClass;->index:I

    .line 36
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClass;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/StyleClass;->index:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClass;
    return v0
.end method

.method public getStyleClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClass;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleClass;->styleClassName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClass;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleClass;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleClass;->styleClassName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleClass;
    return-object v0
.end method
