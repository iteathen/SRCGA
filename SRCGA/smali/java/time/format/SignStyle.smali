.class public final enum Ljava/time/format/SignStyle;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/SignStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/SignStyle;

.field public static final enum ALWAYS:Ljava/time/format/SignStyle;

.field public static final enum EXCEEDS_PAD:Ljava/time/format/SignStyle;

.field public static final enum NEVER:Ljava/time/format/SignStyle;

.field public static final enum NORMAL:Ljava/time/format/SignStyle;

.field public static final enum NOT_NEGATIVE:Ljava/time/format/SignStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 52
    new-instance v0, Ljava/time/format/SignStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NORMAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    .line 60
    new-instance v0, Ljava/time/format/SignStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ALWAYS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    .line 67
    new-instance v0, Ljava/time/format/SignStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NEVER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->NEVER:Ljava/time/format/SignStyle;

    .line 74
    new-instance v0, Ljava/time/format/SignStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NOT_NEGATIVE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    .line 83
    new-instance v0, Ljava/time/format/SignStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EXCEEDS_PAD"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/time/format/SignStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/format/SignStyle;->NEVER:Ljava/time/format/SignStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/format/SignStyle;->$VALUES:[Ljava/time/format/SignStyle;

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
    .line 44
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SignStyle;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/SignStyle;
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/format/SignStyle;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/format/SignStyle;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/format/SignStyle;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Ljava/time/format/SignStyle;->$VALUES:[Ljava/time/format/SignStyle;

    invoke-virtual {v0}, [Ljava/time/format/SignStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/SignStyle;

    return-object v0
.end method


# virtual methods
.method parse(ZZZ)Z
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SignStyle;
    move v1, p1

    .local v1, "positive":Z
    move v2, p2

    .local v2, "strict":Z
    move v3, p3

    .local v3, "fixedWidth":Z
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 103
    :pswitch_0
    move v4, v2

    if-nez v4, :cond_2

    move v4, v3

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Ljava/time/format/SignStyle;
    :goto_1
    return v0

    .line 97
    .restart local v0    # "this":Ljava/time/format/SignStyle;
    :pswitch_1
    move v4, v1

    if-eqz v4, :cond_0

    move v4, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 100
    :pswitch_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 103
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
