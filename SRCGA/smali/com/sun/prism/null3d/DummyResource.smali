.class Lcom/sun/prism/null3d/DummyResource;
.super Lcom/sun/prism/impl/BaseGraphicsResource;
.source "DummyResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/null3d/DummyResource$DummyRecord;
    }
.end annotation


# instance fields
.field public final context:Lcom/sun/prism/null3d/DummyContext;


# direct methods
.method constructor <init>(Lcom/sun/prism/null3d/DummyContext;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResource;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/null3d/DummyContext;
    move-object v2, v0

    new-instance v3, Lcom/sun/prism/null3d/DummyResource$DummyRecord;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/prism/null3d/DummyResource$DummyRecord;-><init>()V

    invoke-direct {v2, v3}, Lcom/sun/prism/impl/BaseGraphicsResource;-><init>(Lcom/sun/prism/impl/Disposer$Record;)V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/null3d/DummyResource;->context:Lcom/sun/prism/null3d/DummyContext;

    .line 38
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
