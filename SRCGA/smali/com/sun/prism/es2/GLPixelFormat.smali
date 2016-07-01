.class Lcom/sun/prism/es2/GLPixelFormat;
.super Ljava/lang/Object;
.source "GLPixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    }
.end annotation


# static fields
.field private static defaultBufferSize:I

.field private static defaultDepthSize:I


# instance fields
.field private final attributes:Lcom/sun/prism/es2/GLPixelFormat$Attributes;

.field private nativePFInfo:J

.field private final nativeScreen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/sun/prism/es2/GLPixelFormat$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    return-void
.end method

.method constructor <init>(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)V
    .locals 9

    .prologue
    .line 50
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLPixelFormat;
    move-wide v2, p1

    .local v2, "nativeScreen":J
    move-object v4, p3

    .local v4, "attributes":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/prism/es2/GLPixelFormat;->nativeScreen:J

    .line 52
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/prism/es2/GLPixelFormat;->attributes:Lcom/sun/prism/es2/GLPixelFormat$Attributes;

    .line 53
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/sun/prism/es2/GLPixelFormat;->defaultDepthSize:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/sun/prism/es2/GLPixelFormat;->defaultBufferSize:I

    return v0
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/prism/es2/GLPixelFormat;->lambda$static$446()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$446()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 44
    const-string v0, "prism.glDepthSize"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sun/prism/es2/GLPixelFormat;->defaultDepthSize:I

    .line 45
    const-string v0, "prism.glBufferSize"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sun/prism/es2/GLPixelFormat;->defaultBufferSize:I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method getAttributes()Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/GLPixelFormat;->attributes:Lcom/sun/prism/es2/GLPixelFormat$Attributes;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat;
    return-object v0
.end method

.method getNativePFInfo()J
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/GLPixelFormat;->nativePFInfo:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat;
    return-wide v0
.end method

.method getNativeScreen()J
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/GLPixelFormat;->nativeScreen:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLPixelFormat;
    return-wide v0
.end method

.method setNativePFInfo(J)V
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLPixelFormat;
    move-wide v1, p1

    .local v1, "nativePFInfo":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/prism/es2/GLPixelFormat;->nativePFInfo:J

    .line 65
    return-void
.end method
