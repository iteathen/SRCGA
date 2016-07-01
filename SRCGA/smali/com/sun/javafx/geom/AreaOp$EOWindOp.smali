.class public Lcom/sun/javafx/geom/AreaOp$EOWindOp;
.super Lcom/sun/javafx/geom/AreaOp;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EOWindOp"
.end annotation


# instance fields
.field private inside:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$EOWindOp;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/geom/AreaOp;-><init>(Lcom/sun/javafx/geom/AreaOp$1;)V

    return-void
.end method


# virtual methods
.method public classify(Lcom/sun/javafx/geom/Edge;)I
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$EOWindOp;
    move-object v1, p1

    .local v1, "e":Lcom/sun/javafx/geom/Edge;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/geom/AreaOp$EOWindOp;->inside:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 124
    .local v2, "newInside":Z
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/geom/AreaOp$EOWindOp;->inside:Z

    .line 125
    move v3, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp$EOWindOp;
    return v0

    .line 123
    .end local v2    # "newInside":Z
    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaOp$EOWindOp;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 125
    .restart local v2    # "newInside":Z
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$EOWindOp;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/geom/AreaOp$EOWindOp;->inside:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp$EOWindOp;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaOp$EOWindOp;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public newRow()V
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$EOWindOp;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/geom/AreaOp$EOWindOp;->inside:Z

    .line 118
    return-void
.end method
