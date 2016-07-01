.class Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
.super Ljava/lang/Object;
.source "BaseMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/BaseMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeshGeomComp2VB"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final key:I

.field private final loc:I

.field private locs:[I

.field final synthetic this$0:Lcom/sun/prism/impl/BaseMesh;

.field private validLocs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1026
    const-class v0, Lcom/sun/prism/impl/BaseMesh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sun/prism/impl/BaseMesh;II)V
    .locals 7

    .prologue
    .line 1033
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/impl/BaseMesh;
    move v2, p2

    .local v2, "key":I
    move v3, p3

    .local v3, "loc":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->this$0:Lcom/sun/prism/impl/BaseMesh;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1034
    sget-boolean v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move v4, v3

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1035
    :cond_0
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->key:I

    .line 1036
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->loc:I

    .line 1037
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    .line 1038
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    .line 1039
    return-void
.end method


# virtual methods
.method addLoc(I)V
    .locals 9

    .prologue
    .line 1042
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move v1, p1

    .local v1, "loc":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    if-nez v3, :cond_0

    .line 1043
    move-object v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    .line 1044
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->loc:I

    aput v5, v3, v4

    .line 1045
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    const/4 v4, 0x1

    move v5, v1

    aput v5, v3, v4

    .line 1046
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    .line 1057
    :goto_0
    return-void

    .line 1047
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    if-le v3, v4, :cond_1

    .line 1048
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    move v5, v1

    aput v5, v3, v4

    .line 1049
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    goto :goto_0

    .line 1051
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    .line 1052
    .local v2, "temp":[I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1053
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    .line 1054
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    move v5, v1

    aput v5, v3, v4

    .line 1055
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    goto :goto_0
.end method

.method getKey()I
    .locals 2

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->key:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    return v0
.end method

.method getLoc()I
    .locals 2

    .prologue
    .line 1064
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->loc:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    return v0
.end method

.method getLocs()[I
    .locals 2

    .prologue
    .line 1068
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->locs:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    return-object v0
.end method

.method getValidLocs()I
    .locals 2

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->validLocs:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    return v0
.end method
