.class public Lcom/sun/scenario/effect/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# static fields
.field private static alldatas:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sun/scenario/effect/ImageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bounds:Lcom/sun/javafx/geom/Rectangle;

.field private fctx:Lcom/sun/scenario/effect/FilterContext;

.field private fromwhere:Ljava/lang/Throwable;

.field private image:Lcom/sun/scenario/effect/Filterable;

.field private refcount:I

.field private reusable:Z

.field private sharedOwner:Lcom/sun/scenario/effect/ImageData;

.field private transform:Lcom/sun/javafx/geom/transform/BaseTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/sun/scenario/effect/ImageData$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 9

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "image":Lcom/sun/scenario/effect/Filterable;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget-object v8, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 9

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "image":Lcom/sun/scenario/effect/Filterable;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, p4

    .local v4, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    .line 87
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/sun/scenario/effect/ImageData;->refcount:I

    .line 88
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    .line 89
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/scenario/effect/ImageData;->bounds:Lcom/sun/javafx/geom/Rectangle;

    .line 90
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 91
    sget-object v5, Lcom/sun/scenario/effect/ImageData;->alldatas:Ljava/util/HashSet;

    if-eqz v5, :cond_0

    .line 92
    sget-object v5, Lcom/sun/scenario/effect/ImageData;->alldatas:Ljava/util/HashSet;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 93
    move-object v5, v0

    new-instance v6, Ljava/lang/Throwable;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    iput-object v6, v5, Lcom/sun/scenario/effect/ImageData;->fromwhere:Ljava/lang/Throwable;

    .line 95
    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 9

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "original":Lcom/sun/scenario/effect/ImageData;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 114
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/scenario/effect/ImageData;->sharedOwner:Lcom/sun/scenario/effect/ImageData;

    .line 115
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/scenario/effect/ImageData;->alldatas:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/scenario/effect/ImageData;)I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ImageData;->refcount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/scenario/effect/ImageData;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/scenario/effect/ImageData;)Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->fromwhere:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/scenario/effect/ImageData;
    return-object v0
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/scenario/effect/ImageData;->lambda$static$32()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$32()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 51
    const-string v0, "decora.showleaks"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/HashSet;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sun/scenario/effect/ImageData;->alldatas:Ljava/util/HashSet;

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/sun/scenario/effect/ImageData$1;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/ImageData$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 66
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addref()Z
    .locals 5

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/ImageData;->reusable:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ImageData;->refcount:I

    if-nez v1, :cond_0

    .line 177
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    if-eqz v1, :cond_0

    .line 178
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    invoke-interface {v1}, Lcom/sun/scenario/effect/Filterable;->lock()V

    .line 181
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/scenario/effect/ImageData;->refcount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/scenario/effect/ImageData;->refcount:I

    .line 182
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    invoke-interface {v1}, Lcom/sun/scenario/effect/Filterable;->isLost()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFilterContext()Lcom/sun/scenario/effect/FilterContext;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    return-object v0
.end method

.method public getReferenceCount()I
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/ImageData;->refcount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    return v0
.end method

.method public getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    return-object v0
.end method

.method public getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 7

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->bounds:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v3

    .line 168
    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    :goto_0
    return-object v0

    .line 163
    .restart local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    :cond_0
    new-instance v3, Lcom/sun/javafx/geom/Rectangle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    move-object v2, v3

    .line 164
    .local v2, "txbounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/ImageData;->bounds:Lcom/sun/javafx/geom/Rectangle;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)V

    .line 165
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 166
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 168
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public getTransformedImage(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;
    .locals 9

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    if-nez v3, :cond_1

    .line 142
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 149
    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    :goto_0
    return-object v0

    .line 144
    .restart local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    move-object v0, v3

    goto :goto_0

    .line 147
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v3

    move-object v2, v3

    .line 148
    .local v2, "txbounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    invoke-static {v3}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/ImageData;->bounds:Lcom/sun/javafx/geom/Rectangle;

    move-object v8, v2

    .line 149
    invoke-virtual/range {v3 .. v8}, Lcom/sun/scenario/effect/impl/Renderer;->transform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->bounds:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    return-object v0
.end method

.method public getUntransformedImage()Lcom/sun/scenario/effect/Filterable;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    return-object v0
.end method

.method public releaseTransformedImage(Lcom/sun/scenario/effect/Filterable;)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "tximage":Lcom/sun/scenario/effect/Filterable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    if-eq v2, v3, :cond_0

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/effect/Effect;->releaseCompatibleImage(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)V

    .line 157
    :cond_0
    return-void
.end method

.method public setReusable(Z)V
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move v1, p1

    .local v1, "reusable":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->sharedOwner:Lcom/sun/scenario/effect/ImageData;

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Ljava/lang/InternalError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "cannot make a shared ImageData reusable"

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/scenario/effect/ImageData;->reusable:Z

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageData{sharedOwner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->sharedOwner:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refcount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/scenario/effect/ImageData;->refcount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", image="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->bounds:Lcom/sun/javafx/geom/Rectangle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reusable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/scenario/effect/ImageData;->reusable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    return-object v0
.end method

.method public transform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/ImageData;
    .locals 9

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "concattx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    move-object v3, v0

    move-object v0, v3

    .line 107
    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    :goto_0
    return-object v0

    .line 102
    .restart local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    move-object v3, v1

    move-object v2, v3

    .line 107
    .local v2, "newtx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_1
    new-instance v3, Lcom/sun/scenario/effect/ImageData;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/ImageData;->bounds:Lcom/sun/javafx/geom/Rectangle;

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v3

    goto :goto_0

    .line 105
    .end local v2    # "newtx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/ImageData;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "newtx":Lcom/sun/javafx/geom/transform/BaseTransform;
    goto :goto_1
.end method

.method public unref()V
    .locals 6

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/scenario/effect/ImageData;->refcount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lcom/sun/scenario/effect/ImageData;->refcount:I

    if-nez v1, :cond_1

    .line 187
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->sharedOwner:Lcom/sun/scenario/effect/ImageData;

    if-eqz v1, :cond_2

    .line 188
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->sharedOwner:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 189
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/effect/ImageData;->sharedOwner:Lcom/sun/scenario/effect/ImageData;

    .line 198
    :cond_0
    :goto_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    .line 199
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    .line 200
    sget-object v1, Lcom/sun/scenario/effect/ImageData;->alldatas:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 201
    sget-object v1, Lcom/sun/scenario/effect/ImageData;->alldatas:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 204
    :cond_1
    :goto_1
    return-void

    .line 190
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    if-eqz v1, :cond_0

    .line 191
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/ImageData;->reusable:Z

    if-eqz v1, :cond_3

    .line 192
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    invoke-interface {v1}, Lcom/sun/scenario/effect/Filterable;->unlock()V

    .line 193
    goto :goto_1

    .line 195
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/ImageData;->fctx:Lcom/sun/scenario/effect/FilterContext;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    invoke-static {v1, v2}, Lcom/sun/scenario/effect/Effect;->releaseCompatibleImage(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)V

    goto :goto_0
.end method

.method public validate(Lcom/sun/scenario/effect/FilterContext;)Z
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/ImageData;->image:Lcom/sun/scenario/effect/Filterable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 216
    invoke-static {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/Renderer;->isImageDataCompatible(Lcom/sun/scenario/effect/ImageData;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/ImageData;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
