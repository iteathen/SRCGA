.class Lcom/sun/prism/es2/ES2Shader$Uniform;
.super Ljava/lang/Object;
.source "ES2Shader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/ES2Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Uniform"
.end annotation


# instance fields
.field private location:I

.field private values:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/prism/es2/ES2Shader$1;)V
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/prism/es2/ES2Shader$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/es2/ES2Shader$Uniform;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/prism/es2/ES2Shader$Uniform;)I
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2Shader$Uniform;->location:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/es2/ES2Shader$Uniform;
    return v0
.end method

.method static synthetic access$202(Lcom/sun/prism/es2/ES2Shader$Uniform;I)I
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/es2/ES2Shader$Uniform;->location:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/es2/ES2Shader$Uniform;
    return v0
.end method

.method static synthetic access$300(Lcom/sun/prism/es2/ES2Shader$Uniform;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Shader$Uniform;->values:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/es2/ES2Shader$Uniform;
    return-object v0
.end method

.method static synthetic access$302(Lcom/sun/prism/es2/ES2Shader$Uniform;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/es2/ES2Shader$Uniform;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/prism/es2/ES2Shader$Uniform;->values:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/prism/es2/ES2Shader$Uniform;
    return-object v0
.end method
