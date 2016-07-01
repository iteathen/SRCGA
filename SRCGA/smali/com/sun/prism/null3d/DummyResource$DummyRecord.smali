.class Lcom/sun/prism/null3d/DummyResource$DummyRecord;
.super Ljava/lang/Object;
.source "DummyResource.java"

# interfaces
.implements Lcom/sun/prism/impl/Disposer$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/null3d/DummyResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyRecord"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResource$DummyRecord;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
