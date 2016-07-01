.class public Lcom/sun/javafx/sg/prism/NGSVGPath;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGSVGPath.java"


# instance fields
.field private path:Lcom/sun/javafx/geom/Shape;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSVGPath;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptsPath2dOnUpdate()Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSVGPath;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGSVGPath;
    return v0
.end method

.method public getGeometry()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSVGPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGSVGPath;->path:Lcom/sun/javafx/geom/Shape;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGSVGPath;
    return-object v0
.end method

.method public getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSVGPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGSVGPath;->path:Lcom/sun/javafx/geom/Shape;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGSVGPath;
    return-object v0
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGSVGPath;
    move-object v1, p1

    .local v1, "content":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Shape;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGSVGPath;->path:Lcom/sun/javafx/geom/Shape;

    .line 39
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGSVGPath;->geometryChanged()V

    .line 40
    return-void
.end method
