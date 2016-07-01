.class public final enum Lcom/sun/prism/Texture$WrapMode;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/Texture$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/Texture$WrapMode;

.field public static final enum CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

.field public static final enum CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

.field public static final enum CLAMP_TO_EDGE_SIMULATED:Lcom/sun/prism/Texture$WrapMode;

.field public static final enum CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

.field public static final enum CLAMP_TO_ZERO_SIMULATED:Lcom/sun/prism/Texture$WrapMode;

.field public static final enum REPEAT:Lcom/sun/prism/Texture$WrapMode;

.field public static final enum REPEAT_SIMULATED:Lcom/sun/prism/Texture$WrapMode;


# instance fields
.field private simulatedBy:Lcom/sun/prism/Texture$WrapMode;

.field private simulates:Lcom/sun/prism/Texture$WrapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 60
    new-instance v0, Lcom/sun/prism/Texture$WrapMode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "CLAMP_NOT_NEEDED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    .line 74
    new-instance v0, Lcom/sun/prism/Texture$WrapMode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "CLAMP_TO_ZERO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    .line 83
    new-instance v0, Lcom/sun/prism/Texture$WrapMode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "CLAMP_TO_EDGE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    .line 93
    new-instance v0, Lcom/sun/prism/Texture$WrapMode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "REPEAT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    .line 106
    new-instance v0, Lcom/sun/prism/Texture$WrapMode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "CLAMP_TO_ZERO_SIMULATED"

    const/4 v3, 0x4

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/Texture$WrapMode;-><init>(Ljava/lang/String;ILcom/sun/prism/Texture$WrapMode;)V

    sput-object v0, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO_SIMULATED:Lcom/sun/prism/Texture$WrapMode;

    .line 126
    new-instance v0, Lcom/sun/prism/Texture$WrapMode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "CLAMP_TO_EDGE_SIMULATED"

    const/4 v3, 0x5

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/Texture$WrapMode;-><init>(Ljava/lang/String;ILcom/sun/prism/Texture$WrapMode;)V

    sput-object v0, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE_SIMULATED:Lcom/sun/prism/Texture$WrapMode;

    .line 145
    new-instance v0, Lcom/sun/prism/Texture$WrapMode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "REPEAT_SIMULATED"

    const/4 v3, 0x6

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/Texture$WrapMode;-><init>(Ljava/lang/String;ILcom/sun/prism/Texture$WrapMode;)V

    sput-object v0, Lcom/sun/prism/Texture$WrapMode;->REPEAT_SIMULATED:Lcom/sun/prism/Texture$WrapMode;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sun/prism/Texture$WrapMode;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO_SIMULATED:Lcom/sun/prism/Texture$WrapMode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE_SIMULATED:Lcom/sun/prism/Texture$WrapMode;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/prism/Texture$WrapMode;->REPEAT_SIMULATED:Lcom/sun/prism/Texture$WrapMode;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/Texture$WrapMode;->$VALUES:[Lcom/sun/prism/Texture$WrapMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Texture$WrapMode;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sun/prism/Texture$WrapMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/Texture$WrapMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Texture$WrapMode;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "simulates":Lcom/sun/prism/Texture$WrapMode;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/prism/Texture$WrapMode;->simulates:Lcom/sun/prism/Texture$WrapMode;

    .line 151
    move-object v4, v3

    move-object v5, v0

    iput-object v5, v4, Lcom/sun/prism/Texture$WrapMode;->simulatedBy:Lcom/sun/prism/Texture$WrapMode;

    .line 152
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/Texture$WrapMode;
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/Texture$WrapMode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/Texture$WrapMode;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/Texture$WrapMode;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sun/prism/Texture$WrapMode;->$VALUES:[Lcom/sun/prism/Texture$WrapMode;

    invoke-virtual {v0}, [Lcom/sun/prism/Texture$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/Texture$WrapMode;

    return-object v0
.end method


# virtual methods
.method public isCompatibleWith(Lcom/sun/prism/Texture$WrapMode;)Z
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Texture$WrapMode;
    move-object v1, p1

    .local v1, "requestedMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/Texture$WrapMode;->simulates:Lcom/sun/prism/Texture$WrapMode;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/Texture$WrapMode;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/Texture$WrapMode;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public simulatedVersion()Lcom/sun/prism/Texture$WrapMode;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Texture$WrapMode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Texture$WrapMode;->simulatedBy:Lcom/sun/prism/Texture$WrapMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Texture$WrapMode;
    return-object v0
.end method
