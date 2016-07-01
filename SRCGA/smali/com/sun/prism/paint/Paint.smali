.class public abstract Lcom/sun/prism/paint/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/paint/Paint$Type;
    }
.end annotation


# instance fields
.field private final isMutable:Z

.field private final proportional:Z

.field private final type:Lcom/sun/prism/paint/Paint$Type;


# direct methods
.method constructor <init>(Lcom/sun/prism/paint/Paint$Type;ZZ)V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Paint;
    move-object v1, p1

    .local v1, "type":Lcom/sun/prism/paint/Paint$Type;
    move v2, p2

    .local v2, "proportional":Z
    move v3, p3

    .local v3, "isMutable":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/paint/Paint;->type:Lcom/sun/prism/paint/Paint$Type;

    .line 61
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/prism/paint/Paint;->proportional:Z

    .line 62
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/prism/paint/Paint;->isMutable:Z

    .line 63
    return-void
.end method


# virtual methods
.method public final getType()Lcom/sun/prism/paint/Paint$Type;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Paint;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/paint/Paint;->type:Lcom/sun/prism/paint/Paint$Type;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Paint;
    return-object v0
.end method

.method public isMutable()Z
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Paint;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/paint/Paint;->isMutable:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Paint;
    return v0
.end method

.method public abstract isOpaque()Z
.end method

.method public isProportional()Z
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Paint;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/paint/Paint;->proportional:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Paint;
    return v0
.end method
