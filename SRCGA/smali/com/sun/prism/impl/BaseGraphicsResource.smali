.class public abstract Lcom/sun/prism/impl/BaseGraphicsResource;
.super Ljava/lang/Object;
.source "BaseGraphicsResource.java"

# interfaces
.implements Lcom/sun/prism/GraphicsResource;


# instance fields
.field protected final disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

.field private final disposerReferent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sun/prism/impl/BaseGraphicsResource;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphicsResource;
    move-object v1, p1

    .local v1, "sharedResource":Lcom/sun/prism/impl/BaseGraphicsResource;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/impl/BaseGraphicsResource;->disposerReferent:Ljava/lang/Object;

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphicsResource;->disposerReferent:Ljava/lang/Object;

    .line 36
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/impl/BaseGraphicsResource;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphicsResource;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseGraphicsResource;
    move-object v1, p1

    .local v1, "disposerRecord":Lcom/sun/prism/impl/Disposer$Record;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphicsResource;->disposerReferent:Ljava/lang/Object;

    .line 41
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/BaseGraphicsResource;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    .line 42
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseGraphicsResource;->disposerReferent:Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/prism/impl/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/prism/impl/Disposer$Record;)V

    .line 43
    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method
