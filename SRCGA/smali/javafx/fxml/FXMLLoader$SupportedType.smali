.class abstract enum Ljavafx/fxml/FXMLLoader$SupportedType;
.super Ljava/lang/Enum;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SupportedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/fxml/FXMLLoader$SupportedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/fxml/FXMLLoader$SupportedType;

.field public static final enum EVENT:Ljavafx/fxml/FXMLLoader$SupportedType;

.field public static final enum LIST_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

.field public static final enum MAP_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

.field public static final enum PARAMETERLESS:Ljavafx/fxml/FXMLLoader$SupportedType;

.field public static final enum PROPERTY_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

.field public static final enum SET_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 2920
    new-instance v0, Ljavafx/fxml/FXMLLoader$SupportedType$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PARAMETERLESS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/fxml/FXMLLoader$SupportedType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/fxml/FXMLLoader$SupportedType;->PARAMETERLESS:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 2928
    new-instance v0, Ljavafx/fxml/FXMLLoader$SupportedType$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EVENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/fxml/FXMLLoader$SupportedType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/fxml/FXMLLoader$SupportedType;->EVENT:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 2937
    new-instance v0, Ljavafx/fxml/FXMLLoader$SupportedType$3;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LIST_CHANGE_LISTENER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/fxml/FXMLLoader$SupportedType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/fxml/FXMLLoader$SupportedType;->LIST_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 2946
    new-instance v0, Ljavafx/fxml/FXMLLoader$SupportedType$4;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MAP_CHANGE_LISTENER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/fxml/FXMLLoader$SupportedType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/fxml/FXMLLoader$SupportedType;->MAP_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 2955
    new-instance v0, Ljavafx/fxml/FXMLLoader$SupportedType$5;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SET_CHANGE_LISTENER"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/fxml/FXMLLoader$SupportedType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/fxml/FXMLLoader$SupportedType;->SET_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 2964
    new-instance v0, Ljavafx/fxml/FXMLLoader$SupportedType$6;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PROPERTY_CHANGE_LISTENER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/fxml/FXMLLoader$SupportedType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/fxml/FXMLLoader$SupportedType;->PROPERTY_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 2919
    const/4 v0, 0x6

    new-array v0, v0, [Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/fxml/FXMLLoader$SupportedType;->PARAMETERLESS:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/fxml/FXMLLoader$SupportedType;->EVENT:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/fxml/FXMLLoader$SupportedType;->LIST_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/fxml/FXMLLoader$SupportedType;->MAP_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/fxml/FXMLLoader$SupportedType;->SET_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/fxml/FXMLLoader$SupportedType;->PROPERTY_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/fxml/FXMLLoader$SupportedType;->$VALUES:[Ljavafx/fxml/FXMLLoader$SupportedType;

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
    .line 2919
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$SupportedType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjavafx/fxml/FXMLLoader$1;)V
    .locals 7

    .prologue
    .line 2919
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$SupportedType;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":Ljavafx/fxml/FXMLLoader$1;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/fxml/FXMLLoader$SupportedType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/fxml/FXMLLoader$SupportedType;
    .locals 3

    .prologue
    .line 2919
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/fxml/FXMLLoader$SupportedType;
    .locals 1

    .prologue
    .line 2919
    sget-object v0, Ljavafx/fxml/FXMLLoader$SupportedType;->$VALUES:[Ljavafx/fxml/FXMLLoader$SupportedType;

    invoke-virtual {v0}, [Ljavafx/fxml/FXMLLoader$SupportedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/fxml/FXMLLoader$SupportedType;

    return-object v0
.end method


# virtual methods
.method protected abstract methodIsOfType(Ljava/lang/reflect/Method;)Z
.end method
