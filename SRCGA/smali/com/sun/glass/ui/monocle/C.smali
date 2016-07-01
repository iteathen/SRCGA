.class Lcom/sun/glass/ui/monocle/C;
.super Ljava/lang/Object;
.source "C.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/C$Structure;
    }
.end annotation


# static fields
.field private static instance:Lcom/sun/glass/ui/monocle/C;

.field private static permission:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/RuntimePermission;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "loadLibrary.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/glass/ui/monocle/C;->permission:Ljava/security/Permission;

    .line 42
    new-instance v0, Lcom/sun/glass/ui/monocle/C;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/C;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/C;->instance:Lcom/sun/glass/ui/monocle/C;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/C;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static checkPermissions()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    move-object v0, v1

    .line 55
    .local v0, "security":Ljava/lang/SecurityManager;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 56
    move-object v1, v0

    sget-object v2, Lcom/sun/glass/ui/monocle/C;->permission:Ljava/security/Permission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 58
    :cond_0
    return-void
.end method

.method static getC()Lcom/sun/glass/ui/monocle/C;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/sun/glass/ui/monocle/C;->checkPermissions()V

    .line 50
    sget-object v0, Lcom/sun/glass/ui/monocle/C;->instance:Lcom/sun/glass/ui/monocle/C;

    return-object v0
.end method


# virtual methods
.method native GetDirectBufferAddress(Ljava/nio/ByteBuffer;)J
.end method

.method native NewDirectByteBuffer(JI)Ljava/nio/ByteBuffer;
.end method
