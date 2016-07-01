.class Lcom/sun/prism/es2/X11GLFactory;
.super Lcom/sun/prism/es2/GLFactory;
.source "X11GLFactory.java"


# instance fields
.field private blackList:[Lcom/sun/prism/es2/GLGPUInfo;

.field private preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;


# direct methods
.method constructor <init>()V
    .locals 10

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/es2/GLFactory;-><init>()V

    .line 42
    move-object v1, v0

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x0

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "advanced micro devices"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x1

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x2

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "intel open source technology center"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x3

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x4

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nouveau"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x5

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iput-object v2, v1, Lcom/sun/prism/es2/X11GLFactory;->preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;

    .line 51
    move-object v1, v0

    const/16 v2, 0x28

    new-array v2, v2, [Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x0

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1300"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x1

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1350"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x2

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1400"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x3

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1450"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x4

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1500"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x5

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1550"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x6

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1600"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/4 v4, 0x7

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1650"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x8

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1700"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x9

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1800"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0xa

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1900"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0xb

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "ati"

    const-string v8, "radeon x1950"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0xc

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd rv505"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0xd

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd rv515"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0xe

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd rv516"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0xf

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd r520"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x10

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd rv530"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x11

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd rv535"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x12

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd rv560"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x13

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd rv570"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x14

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "x.org"

    const-string v8, "amd r580"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x15

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 6100"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x16

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 6150"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x17

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 6200"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x18

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 6500"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x19

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 6600"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x1a

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 6700"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x1b

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 6800"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x1c

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7025"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x1d

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7100"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x1e

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7150"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x1f

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7200"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x20

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7300"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x21

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7350"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x22

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7500"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x23

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7600"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x24

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7650"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x25

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7800"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x26

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7900"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const/16 v4, 0x27

    new-instance v5, Lcom/sun/prism/es2/GLGPUInfo;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "nvidia"

    const-string v8, "geforce 7950"

    invoke-direct {v6, v7, v8}, Lcom/sun/prism/es2/GLGPUInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iput-object v2, v1, Lcom/sun/prism/es2/X11GLFactory;->blackList:[Lcom/sun/prism/es2/GLGPUInfo;

    return-void
.end method

.method private static native nGetAdapterCount()I
.end method

.method private static native nGetAdapterOrdinal(J)I
.end method

.method private static native nGetDefaultScreen(J)I
.end method

.method private static native nGetDisplay(J)J
.end method

.method private static native nGetVisualID(J)J
.end method

.method private static native nInitialize([I)J
.end method


# virtual methods
.method createDummyGLDrawable(Lcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    new-instance v2, Lcom/sun/prism/es2/X11GLDrawable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/prism/es2/X11GLDrawable;-><init>(Lcom/sun/prism/es2/GLPixelFormat;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return-object v0
.end method

.method createGLContext(J)Lcom/sun/prism/es2/GLContext;
    .locals 9

    .prologue
    .line 106
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-wide v2, p1

    .local v2, "nativeCtxInfo":J
    new-instance v4, Lcom/sun/prism/es2/X11GLContext;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/es2/X11GLContext;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return-object v1
.end method

.method createGLContext(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;Lcom/sun/prism/es2/GLContext;Z)Lcom/sun/prism/es2/GLContext;
    .locals 11

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-object v1, p1

    .local v1, "drawable":Lcom/sun/prism/es2/GLDrawable;
    move-object v2, p2

    .local v2, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v3, p3

    .local v3, "shareCtx":Lcom/sun/prism/es2/GLContext;
    move v4, p4

    .local v4, "vSyncRequest":Z
    new-instance v5, Lcom/sun/prism/es2/X11GLContext;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/prism/es2/X11GLContext;-><init>(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;Z)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return-object v0
.end method

.method createGLDrawable(JLcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;
    .locals 11

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-wide v1, p1

    .local v1, "nativeWindow":J
    move-object v3, p3

    .local v3, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    new-instance v4, Lcom/sun/prism/es2/X11GLDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-wide v6, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/es2/X11GLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return-object v0
.end method

.method createGLPixelFormat(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)Lcom/sun/prism/es2/GLPixelFormat;
    .locals 11

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-wide v1, p1

    .local v1, "nativeScreen":J
    move-object v3, p3

    .local v3, "attributes":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    new-instance v4, Lcom/sun/prism/es2/X11GLPixelFormat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-wide v6, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/es2/X11GLPixelFormat;-><init>(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return-object v0
.end method

.method getAdapterCount()I
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    invoke-static {}, Lcom/sun/prism/es2/X11GLFactory;->nGetAdapterCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return v0
.end method

.method getAdapterOrdinal(J)I
    .locals 7

    .prologue
    .line 164
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-wide v2, p1

    .local v2, "nativeScreen":J
    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/sun/prism/es2/X11GLFactory;->nGetAdapterOrdinal(J)I

    move-result v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return v1
.end method

.method getBlackList()[Lcom/sun/prism/es2/GLGPUInfo;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/X11GLFactory;->blackList:[Lcom/sun/prism/es2/GLGPUInfo;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return-object v0
.end method

.method getPreQualificationFilter()[Lcom/sun/prism/es2/GLGPUInfo;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/X11GLFactory;->preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    return-object v0
.end method

.method initialize(Ljava/lang/Class;Lcom/sun/prism/es2/GLPixelFormat$Attributes;)Z
    .locals 8

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-object v1, p1

    .local v1, "psClass":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "attrs":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    const/4 v4, 0x7

    new-array v4, v4, [I

    move-object v3, v4

    .line 137
    .local v3, "attrArr":[I
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getRedSize()I

    move-result v6

    aput v6, v4, v5

    .line 138
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getGreenSize()I

    move-result v6

    aput v6, v4, v5

    .line 139
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getBlueSize()I

    move-result v6

    aput v6, v4, v5

    .line 140
    move-object v4, v3

    const/4 v5, 0x3

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getAlphaSize()I

    move-result v6

    aput v6, v4, v5

    .line 141
    move-object v4, v3

    const/4 v5, 0x4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getDepthSize()I

    move-result v6

    aput v6, v4, v5

    .line 142
    move-object v4, v3

    const/4 v5, 0x5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isDoubleBuffer()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    aput v6, v4, v5

    .line 143
    move-object v4, v3

    const/4 v5, 0x6

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isOnScreen()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    aput v6, v4, v5

    .line 146
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/prism/es2/X11GLFactory;->nInitialize([I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/prism/es2/X11GLFactory;->nativeCtxInfo:J

    .line 148
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/X11GLFactory;->nativeCtxInfo:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 150
    const/4 v4, 0x0

    move v0, v4

    .line 153
    .end local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    :goto_2
    return v0

    .line 142
    .restart local v0    # "this":Lcom/sun/prism/es2/X11GLFactory;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 143
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 152
    :cond_2
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/prism/es2/X11GLFactory;->gl2:Z

    .line 153
    const/4 v4, 0x1

    move v0, v4

    goto :goto_2
.end method

.method updateDeviceDetails(Ljava/util/HashMap;)V
    .locals 9

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLFactory;
    move-object v1, p1

    .local v1, "deviceDetails":Ljava/util/HashMap;
    move-object v2, v1

    const-string v3, "XVisualID"

    new-instance v4, Ljava/lang/Long;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/X11GLFactory;->nativeCtxInfo:J

    invoke-static {v6, v7}, Lcom/sun/prism/es2/X11GLFactory;->nGetVisualID(J)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    move-object v2, v1

    const-string v3, "XDisplay"

    new-instance v4, Ljava/lang/Long;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/X11GLFactory;->nativeCtxInfo:J

    invoke-static {v6, v7}, Lcom/sun/prism/es2/X11GLFactory;->nGetDisplay(J)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 171
    move-object v2, v1

    const-string v3, "XScreenID"

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/X11GLFactory;->nativeCtxInfo:J

    invoke-static {v6, v7}, Lcom/sun/prism/es2/X11GLFactory;->nGetDefaultScreen(J)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    return-void
.end method
