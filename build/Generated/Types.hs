-- This file is auto generated and will be overriden regulary. Please edit `Application/Schema.sql` to change the Types
{-# LANGUAGE TypeSynonymInstances, FlexibleInstances, InstanceSigs, MultiParamTypeClasses, TypeFamilies, DataKinds, TypeOperators, UndecidableInstances, ConstraintKinds, StandaloneDeriving  #-}
{-# OPTIONS_GHC -Wno-unused-imports -Wno-dodgy-imports -Wno-unused-matches #-}
module Generated.Types where

import IHP.HaskellSupport
import IHP.ModelSupport
import CorePrelude hiding (id)
import Data.Time.Clock
import Data.Time.LocalTime
import qualified Data.Time.Calendar
import qualified Data.List as List
import qualified Data.ByteString as ByteString 
import qualified Net.IP 
import Database.PostgreSQL.Simple
import Database.PostgreSQL.Simple.FromRow
import Database.PostgreSQL.Simple.FromField hiding (Field, name)
import Database.PostgreSQL.Simple.ToField hiding (Field)
import qualified IHP.Controller.Param
import GHC.TypeLits
import Data.UUID (UUID)
import Data.Default
import qualified IHP.QueryBuilder as QueryBuilder
import qualified Data.Proxy
import GHC.Records
import Data.Data
import qualified Data.String.Conversions
import qualified Data.Text.Encoding
import qualified Data.Aeson
import Database.PostgreSQL.Simple.Types (Query (Query), Binary ( .. ))
import qualified Database.PostgreSQL.Simple.Types
import IHP.Job.Types
import IHP.Job.Queue ()
import qualified Data.Dynamic
import Data.Scientific




data QuestionCategory = Endurability | PerceivedUsability | AestheticAppeal | Novelty | FeltInvolvement | FocusedAttention | Confidence | SocialAwareness | SocialRegulation | General | SelfEfficacy | GrowthMindset | Marketing | CodingConfidence | EmotionalRegulation | SelfRegulation | CoRegulation | TimeManagement | TaskManagement deriving (Eq, Show, Read, Enum)
instance FromField QuestionCategory where
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "ENDURABILITY") = pure Endurability
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "PERCEIVED_USABILITY") = pure PerceivedUsability
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "AESTHETIC_APPEAL") = pure AestheticAppeal
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "NOVELTY") = pure Novelty
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "FELT_INVOLVEMENT") = pure FeltInvolvement
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "FOCUSED_ATTENTION") = pure FocusedAttention
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CONFIDENCE") = pure Confidence
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "SOCIAL_AWARENESS") = pure SocialAwareness
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "SOCIAL_REGULATION") = pure SocialRegulation
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "GENERAL") = pure General
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "SELF_EFFICACY") = pure SelfEfficacy
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "GROWTH_MINDSET") = pure GrowthMindset
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "MARKETING") = pure Marketing
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CODING_CONFIDENCE") = pure CodingConfidence
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "EMOTIONAL_REGULATION") = pure EmotionalRegulation
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "SELF_REGULATION") = pure SelfRegulation
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CO_REGULATION") = pure CoRegulation
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "TIME_MANAGEMENT") = pure TimeManagement
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "TASK_MANAGEMENT") = pure TaskManagement
    fromField field (Just value) = returnError ConversionFailed field ("Unexpected value for enum value. Got: " <> Data.String.Conversions.cs value)
    fromField field Nothing = returnError UnexpectedNull field "Unexpected null for enum value"
instance Default QuestionCategory where def = Endurability
instance ToField QuestionCategory where
    toField Endurability = toField ("ENDURABILITY" :: Text)
    toField PerceivedUsability = toField ("PERCEIVED_USABILITY" :: Text)
    toField AestheticAppeal = toField ("AESTHETIC_APPEAL" :: Text)
    toField Novelty = toField ("NOVELTY" :: Text)
    toField FeltInvolvement = toField ("FELT_INVOLVEMENT" :: Text)
    toField FocusedAttention = toField ("FOCUSED_ATTENTION" :: Text)
    toField Confidence = toField ("CONFIDENCE" :: Text)
    toField SocialAwareness = toField ("SOCIAL_AWARENESS" :: Text)
    toField SocialRegulation = toField ("SOCIAL_REGULATION" :: Text)
    toField General = toField ("GENERAL" :: Text)
    toField SelfEfficacy = toField ("SELF_EFFICACY" :: Text)
    toField GrowthMindset = toField ("GROWTH_MINDSET" :: Text)
    toField Marketing = toField ("MARKETING" :: Text)
    toField CodingConfidence = toField ("CODING_CONFIDENCE" :: Text)
    toField EmotionalRegulation = toField ("EMOTIONAL_REGULATION" :: Text)
    toField SelfRegulation = toField ("SELF_REGULATION" :: Text)
    toField CoRegulation = toField ("CO_REGULATION" :: Text)
    toField TimeManagement = toField ("TIME_MANAGEMENT" :: Text)
    toField TaskManagement = toField ("TASK_MANAGEMENT" :: Text)
instance InputValue QuestionCategory where
    inputValue Endurability = "ENDURABILITY" :: Text
    inputValue PerceivedUsability = "PERCEIVED_USABILITY" :: Text
    inputValue AestheticAppeal = "AESTHETIC_APPEAL" :: Text
    inputValue Novelty = "NOVELTY" :: Text
    inputValue FeltInvolvement = "FELT_INVOLVEMENT" :: Text
    inputValue FocusedAttention = "FOCUSED_ATTENTION" :: Text
    inputValue Confidence = "CONFIDENCE" :: Text
    inputValue SocialAwareness = "SOCIAL_AWARENESS" :: Text
    inputValue SocialRegulation = "SOCIAL_REGULATION" :: Text
    inputValue General = "GENERAL" :: Text
    inputValue SelfEfficacy = "SELF_EFFICACY" :: Text
    inputValue GrowthMindset = "GROWTH_MINDSET" :: Text
    inputValue Marketing = "MARKETING" :: Text
    inputValue CodingConfidence = "CODING_CONFIDENCE" :: Text
    inputValue EmotionalRegulation = "EMOTIONAL_REGULATION" :: Text
    inputValue SelfRegulation = "SELF_REGULATION" :: Text
    inputValue CoRegulation = "CO_REGULATION" :: Text
    inputValue TimeManagement = "TIME_MANAGEMENT" :: Text
    inputValue TaskManagement = "TASK_MANAGEMENT" :: Text

instance IHP.Controller.Param.ParamReader QuestionCategory where readParameter = IHP.Controller.Param.enumParamReader; readParameterJSON = IHP.Controller.Param.enumParamReaderJSON


data ResponseCategory = FiveOptionsPostiveUp | FiveOptionsNegativeUp | Neutral deriving (Eq, Show, Read, Enum)
instance FromField ResponseCategory where
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "FIVE_OPTIONS_POSTIVE_UP") = pure FiveOptionsPostiveUp
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "FIVE_OPTIONS_NEGATIVE_UP") = pure FiveOptionsNegativeUp
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "NEUTRAL") = pure Neutral
    fromField field (Just value) = returnError ConversionFailed field ("Unexpected value for enum value. Got: " <> Data.String.Conversions.cs value)
    fromField field Nothing = returnError UnexpectedNull field "Unexpected null for enum value"
instance Default ResponseCategory where def = FiveOptionsPostiveUp
instance ToField ResponseCategory where
    toField FiveOptionsPostiveUp = toField ("FIVE_OPTIONS_POSTIVE_UP" :: Text)
    toField FiveOptionsNegativeUp = toField ("FIVE_OPTIONS_NEGATIVE_UP" :: Text)
    toField Neutral = toField ("NEUTRAL" :: Text)
instance InputValue ResponseCategory where
    inputValue FiveOptionsPostiveUp = "FIVE_OPTIONS_POSTIVE_UP" :: Text
    inputValue FiveOptionsNegativeUp = "FIVE_OPTIONS_NEGATIVE_UP" :: Text
    inputValue Neutral = "NEUTRAL" :: Text

instance IHP.Controller.Param.ParamReader ResponseCategory where readParameter = IHP.Controller.Param.enumParamReader; readParameterJSON = IHP.Controller.Param.enumParamReaderJSON


data OptionCategory = Cat1Options6 | Cat2Options6 | Cat3Options5 | Cat4Options5 | Cat5Options5 | Cat6Options5 | Cat7Options5 | Cat8Options5 deriving (Eq, Show, Read, Enum)
instance FromField OptionCategory where
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CAT_1_OPTIONS_6") = pure Cat1Options6
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CAT_2_OPTIONS_6") = pure Cat2Options6
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CAT_3_OPTIONS_5") = pure Cat3Options5
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CAT_4_OPTIONS_5") = pure Cat4Options5
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CAT_5_OPTIONS_5") = pure Cat5Options5
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CAT_6_OPTIONS_5") = pure Cat6Options5
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CAT_7_OPTIONS_5") = pure Cat7Options5
    fromField field (Just value) | value == (Data.Text.Encoding.encodeUtf8 "CAT_8_OPTIONS_5") = pure Cat8Options5
    fromField field (Just value) = returnError ConversionFailed field ("Unexpected value for enum value. Got: " <> Data.String.Conversions.cs value)
    fromField field Nothing = returnError UnexpectedNull field "Unexpected null for enum value"
instance Default OptionCategory where def = Cat1Options6
instance ToField OptionCategory where
    toField Cat1Options6 = toField ("CAT_1_OPTIONS_6" :: Text)
    toField Cat2Options6 = toField ("CAT_2_OPTIONS_6" :: Text)
    toField Cat3Options5 = toField ("CAT_3_OPTIONS_5" :: Text)
    toField Cat4Options5 = toField ("CAT_4_OPTIONS_5" :: Text)
    toField Cat5Options5 = toField ("CAT_5_OPTIONS_5" :: Text)
    toField Cat6Options5 = toField ("CAT_6_OPTIONS_5" :: Text)
    toField Cat7Options5 = toField ("CAT_7_OPTIONS_5" :: Text)
    toField Cat8Options5 = toField ("CAT_8_OPTIONS_5" :: Text)
instance InputValue OptionCategory where
    inputValue Cat1Options6 = "CAT_1_OPTIONS_6" :: Text
    inputValue Cat2Options6 = "CAT_2_OPTIONS_6" :: Text
    inputValue Cat3Options5 = "CAT_3_OPTIONS_5" :: Text
    inputValue Cat4Options5 = "CAT_4_OPTIONS_5" :: Text
    inputValue Cat5Options5 = "CAT_5_OPTIONS_5" :: Text
    inputValue Cat6Options5 = "CAT_6_OPTIONS_5" :: Text
    inputValue Cat7Options5 = "CAT_7_OPTIONS_5" :: Text
    inputValue Cat8Options5 = "CAT_8_OPTIONS_5" :: Text

instance IHP.Controller.Param.ParamReader OptionCategory where readParameter = IHP.Controller.Param.enumParamReader; readParameterJSON = IHP.Controller.Param.enumParamReaderJSON


data Question' responses surveyQuestions = Question {id :: (Id' "questions"), category :: QuestionCategory, qstnDesc :: Text, optCategory :: OptionCategory, rspnCategory :: ResponseCategory, active :: Bool, responses :: responses, surveyQuestions :: surveyQuestions, meta :: MetaBag} deriving (Eq, Show)
instance InputValue Question where inputValue = IHP.ModelSupport.recordToInputValue
type Question = Question' (QueryBuilder.QueryBuilder "responses") (QueryBuilder.QueryBuilder "survey_questions")

instance FromRow Question where
    fromRow = do
        id <- field
        category <- field
        qstnDesc <- field
        optCategory <- field
        rspnCategory <- field
        active <- field
        let theRecord = Question id category qstnDesc optCategory rspnCategory active (QueryBuilder.filterWhere (#questionId, id) (QueryBuilder.query @Response)) (QueryBuilder.filterWhere (#questionId, id) (QueryBuilder.query @SurveyQuestion)) def { originalDatabaseRecord = Just (Data.Dynamic.toDyn theRecord) }
        pure theRecord

type instance GetTableName (Question' _ _) = "questions"
type instance GetModelByTableName "questions" = Question
type instance GetModelName (Question' _ _) = "Question"

type instance PrimaryKey "questions" = UUID

instance QueryBuilder.FilterPrimaryKey "questions" where
    filterWhereId id builder =
        builder |> QueryBuilder.filterWhere (#id, id)
    {-# INLINE filterWhereId #-}

type instance Include "responses" (Question' responses surveyQuestions) = Question' [Response] surveyQuestions

type instance Include "surveyQuestions" (Question' responses surveyQuestions) = Question' responses [SurveyQuestion]

instance CanCreate Question where
    create :: (?modelContext :: ModelContext) => Question -> IO Question
    create model = do
        List.head <$> sqlQuery "INSERT INTO questions (id, category, qstn_desc, opt_category, rspn_category, active) VALUES (?, ?, ?, ?, ?, ?) RETURNING id, category, qstn_desc, opt_category, rspn_category, active" ((fieldWithDefault #id model, get #category model, get #qstnDesc model, get #optCategory model, get #rspnCategory model, fieldWithDefault #active model))
    createMany [] = pure []
    createMany models = do
        sqlQuery (Query $ "INSERT INTO questions (id, category, qstn_desc, opt_category, rspn_category, active) VALUES " <> (ByteString.intercalate ", " (List.map (\_ -> "(?, ?, ?, ?, ?, ?)") models)) <> " RETURNING id, category, qstn_desc, opt_category, rspn_category, active") (List.concat $ List.map (\model -> [toField (fieldWithDefault #id model), toField (get #category model), toField (get #qstnDesc model), toField (get #optCategory model), toField (get #rspnCategory model), toField (fieldWithDefault #active model)]) models)

instance CanUpdate Question where
    updateRecord model = do
        List.head <$> sqlQuery "UPDATE questions SET id = ?, category = ?, qstn_desc = ?, opt_category = ?, rspn_category = ?, active = ? WHERE id = ? RETURNING id, category, qstn_desc, opt_category, rspn_category, active" ((fieldWithUpdate #id model, fieldWithUpdate #category model, fieldWithUpdate #qstnDesc model, fieldWithUpdate #optCategory model, fieldWithUpdate #rspnCategory model, fieldWithUpdate #active model, get #id model))

instance Record Question where
    {-# INLINE newRecord #-}
    newRecord = Question def def def def def False def def def
instance Default (Id' "questions") where def = Id def
instance () => Table (Question' responses surveyQuestions) where
    tableName = "questions"
    tableNameByteString = "questions"
    columnNames = ["id","category","qstn_desc","opt_category","rspn_category","active"]
    primaryKeyCondition Question { id } = [("id", toField id)]
    {-# INLINABLE primaryKeyCondition #-}

instance SetField "id" (Question' responses surveyQuestions) (Id' "questions") where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question newValue category qstnDesc optCategory rspnCategory active responses surveyQuestions (meta { touchedFields = "id" : touchedFields meta })
instance SetField "category" (Question' responses surveyQuestions) QuestionCategory where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question id newValue qstnDesc optCategory rspnCategory active responses surveyQuestions (meta { touchedFields = "category" : touchedFields meta })
instance SetField "qstnDesc" (Question' responses surveyQuestions) Text where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question id category newValue optCategory rspnCategory active responses surveyQuestions (meta { touchedFields = "qstnDesc" : touchedFields meta })
instance SetField "optCategory" (Question' responses surveyQuestions) OptionCategory where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question id category qstnDesc newValue rspnCategory active responses surveyQuestions (meta { touchedFields = "optCategory" : touchedFields meta })
instance SetField "rspnCategory" (Question' responses surveyQuestions) ResponseCategory where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question id category qstnDesc optCategory newValue active responses surveyQuestions (meta { touchedFields = "rspnCategory" : touchedFields meta })
instance SetField "active" (Question' responses surveyQuestions) Bool where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question id category qstnDesc optCategory rspnCategory newValue responses surveyQuestions (meta { touchedFields = "active" : touchedFields meta })
instance SetField "responses" (Question' responses surveyQuestions) responses where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question id category qstnDesc optCategory rspnCategory active newValue surveyQuestions (meta { touchedFields = "responses" : touchedFields meta })
instance SetField "surveyQuestions" (Question' responses surveyQuestions) surveyQuestions where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question id category qstnDesc optCategory rspnCategory active responses newValue (meta { touchedFields = "surveyQuestions" : touchedFields meta })
instance SetField "meta" (Question' responses surveyQuestions) MetaBag where
    {-# INLINE setField #-}
    setField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) =
        Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions newValue
instance UpdateField "id" (Question' responses surveyQuestions) (Question' responses surveyQuestions) (Id' "questions") (Id' "questions") where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question newValue category qstnDesc optCategory rspnCategory active responses surveyQuestions (meta { touchedFields = "id" : touchedFields meta })
instance UpdateField "category" (Question' responses surveyQuestions) (Question' responses surveyQuestions) QuestionCategory QuestionCategory where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question id newValue qstnDesc optCategory rspnCategory active responses surveyQuestions (meta { touchedFields = "category" : touchedFields meta })
instance UpdateField "qstnDesc" (Question' responses surveyQuestions) (Question' responses surveyQuestions) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question id category newValue optCategory rspnCategory active responses surveyQuestions (meta { touchedFields = "qstnDesc" : touchedFields meta })
instance UpdateField "optCategory" (Question' responses surveyQuestions) (Question' responses surveyQuestions) OptionCategory OptionCategory where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question id category qstnDesc newValue rspnCategory active responses surveyQuestions (meta { touchedFields = "optCategory" : touchedFields meta })
instance UpdateField "rspnCategory" (Question' responses surveyQuestions) (Question' responses surveyQuestions) ResponseCategory ResponseCategory where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question id category qstnDesc optCategory newValue active responses surveyQuestions (meta { touchedFields = "rspnCategory" : touchedFields meta })
instance UpdateField "active" (Question' responses surveyQuestions) (Question' responses surveyQuestions) Bool Bool where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question id category qstnDesc optCategory rspnCategory newValue responses surveyQuestions (meta { touchedFields = "active" : touchedFields meta })
instance UpdateField "responses" (Question' responses surveyQuestions) (Question' responses' surveyQuestions) responses responses' where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question id category qstnDesc optCategory rspnCategory active newValue surveyQuestions (meta { touchedFields = "responses" : touchedFields meta })
instance UpdateField "surveyQuestions" (Question' responses surveyQuestions) (Question' responses surveyQuestions') surveyQuestions surveyQuestions' where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question id category qstnDesc optCategory rspnCategory active responses newValue (meta { touchedFields = "surveyQuestions" : touchedFields meta })
instance UpdateField "meta" (Question' responses surveyQuestions) (Question' responses surveyQuestions) MetaBag MetaBag where
    {-# INLINE updateField #-}
    updateField newValue (Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions meta) = Question id category qstnDesc optCategory rspnCategory active responses surveyQuestions newValue



data Response' surveyId questionId optionId = Response {id :: (Id' "responses"), surveyId :: surveyId, questionId :: questionId, optionId :: optionId, email :: Text, meta :: MetaBag} deriving (Eq, Show)
instance InputValue Response where inputValue = IHP.ModelSupport.recordToInputValue
type Response = Response' (Id' "surveys") (Id' "questions") (Id' "options")

instance FromRow Response where
    fromRow = do
        id <- field
        surveyId <- field
        questionId <- field
        optionId <- field
        email <- field
        let theRecord = Response id surveyId questionId optionId email def { originalDatabaseRecord = Just (Data.Dynamic.toDyn theRecord) }
        pure theRecord

type instance GetTableName (Response' _ _ _) = "responses"
type instance GetModelByTableName "responses" = Response
type instance GetModelName (Response' _ _ _) = "Response"

type instance PrimaryKey "responses" = UUID

instance QueryBuilder.FilterPrimaryKey "responses" where
    filterWhereId id builder =
        builder |> QueryBuilder.filterWhere (#id, id)
    {-# INLINE filterWhereId #-}

type instance Include "surveyId" (Response' surveyId questionId optionId) = Response' (GetModelById surveyId) questionId optionId

type instance Include "questionId" (Response' surveyId questionId optionId) = Response' surveyId (GetModelById questionId) optionId

type instance Include "optionId" (Response' surveyId questionId optionId) = Response' surveyId questionId (GetModelById optionId)

instance CanCreate Response where
    create :: (?modelContext :: ModelContext) => Response -> IO Response
    create model = do
        List.head <$> sqlQuery "INSERT INTO responses (id, survey_id, question_id, option_id, email) VALUES (?, ?, ?, ?, ?) RETURNING id, survey_id, question_id, option_id, email" ((fieldWithDefault #id model, get #surveyId model, get #questionId model, get #optionId model, get #email model))
    createMany [] = pure []
    createMany models = do
        sqlQuery (Query $ "INSERT INTO responses (id, survey_id, question_id, option_id, email) VALUES " <> (ByteString.intercalate ", " (List.map (\_ -> "(?, ?, ?, ?, ?)") models)) <> " RETURNING id, survey_id, question_id, option_id, email") (List.concat $ List.map (\model -> [toField (fieldWithDefault #id model), toField (get #surveyId model), toField (get #questionId model), toField (get #optionId model), toField (get #email model)]) models)

instance CanUpdate Response where
    updateRecord model = do
        List.head <$> sqlQuery "UPDATE responses SET id = ?, survey_id = ?, question_id = ?, option_id = ?, email = ? WHERE id = ? RETURNING id, survey_id, question_id, option_id, email" ((fieldWithUpdate #id model, fieldWithUpdate #surveyId model, fieldWithUpdate #questionId model, fieldWithUpdate #optionId model, fieldWithUpdate #email model, get #id model))

instance Record Response where
    {-# INLINE newRecord #-}
    newRecord = Response def def def def def  def
instance Default (Id' "responses") where def = Id def
instance () => Table (Response' surveyId questionId optionId) where
    tableName = "responses"
    tableNameByteString = "responses"
    columnNames = ["id","survey_id","question_id","option_id","email"]
    primaryKeyCondition Response { id } = [("id", toField id)]
    {-# INLINABLE primaryKeyCondition #-}

instance SetField "id" (Response' surveyId questionId optionId) (Id' "responses") where
    {-# INLINE setField #-}
    setField newValue (Response id surveyId questionId optionId email meta) =
        Response newValue surveyId questionId optionId email (meta { touchedFields = "id" : touchedFields meta })
instance SetField "surveyId" (Response' surveyId questionId optionId) surveyId where
    {-# INLINE setField #-}
    setField newValue (Response id surveyId questionId optionId email meta) =
        Response id newValue questionId optionId email (meta { touchedFields = "surveyId" : touchedFields meta })
instance SetField "questionId" (Response' surveyId questionId optionId) questionId where
    {-# INLINE setField #-}
    setField newValue (Response id surveyId questionId optionId email meta) =
        Response id surveyId newValue optionId email (meta { touchedFields = "questionId" : touchedFields meta })
instance SetField "optionId" (Response' surveyId questionId optionId) optionId where
    {-# INLINE setField #-}
    setField newValue (Response id surveyId questionId optionId email meta) =
        Response id surveyId questionId newValue email (meta { touchedFields = "optionId" : touchedFields meta })
instance SetField "email" (Response' surveyId questionId optionId) Text where
    {-# INLINE setField #-}
    setField newValue (Response id surveyId questionId optionId email meta) =
        Response id surveyId questionId optionId newValue (meta { touchedFields = "email" : touchedFields meta })
instance SetField "meta" (Response' surveyId questionId optionId) MetaBag where
    {-# INLINE setField #-}
    setField newValue (Response id surveyId questionId optionId email meta) =
        Response id surveyId questionId optionId email newValue
instance UpdateField "id" (Response' surveyId questionId optionId) (Response' surveyId questionId optionId) (Id' "responses") (Id' "responses") where
    {-# INLINE updateField #-}
    updateField newValue (Response id surveyId questionId optionId email meta) = Response newValue surveyId questionId optionId email (meta { touchedFields = "id" : touchedFields meta })
instance UpdateField "surveyId" (Response' surveyId questionId optionId) (Response' surveyId' questionId optionId) surveyId surveyId' where
    {-# INLINE updateField #-}
    updateField newValue (Response id surveyId questionId optionId email meta) = Response id newValue questionId optionId email (meta { touchedFields = "surveyId" : touchedFields meta })
instance UpdateField "questionId" (Response' surveyId questionId optionId) (Response' surveyId questionId' optionId) questionId questionId' where
    {-# INLINE updateField #-}
    updateField newValue (Response id surveyId questionId optionId email meta) = Response id surveyId newValue optionId email (meta { touchedFields = "questionId" : touchedFields meta })
instance UpdateField "optionId" (Response' surveyId questionId optionId) (Response' surveyId questionId optionId') optionId optionId' where
    {-# INLINE updateField #-}
    updateField newValue (Response id surveyId questionId optionId email meta) = Response id surveyId questionId newValue email (meta { touchedFields = "optionId" : touchedFields meta })
instance UpdateField "email" (Response' surveyId questionId optionId) (Response' surveyId questionId optionId) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (Response id surveyId questionId optionId email meta) = Response id surveyId questionId optionId newValue (meta { touchedFields = "email" : touchedFields meta })
instance UpdateField "meta" (Response' surveyId questionId optionId) (Response' surveyId questionId optionId) MetaBag MetaBag where
    {-# INLINE updateField #-}
    updateField newValue (Response id surveyId questionId optionId email meta) = Response id surveyId questionId optionId email newValue



data Survey' responses surveyQuestions = Survey {id :: (Id' "surveys"), surveyName :: Text, surveyCategory :: QuestionCategory, active :: Bool, responses :: responses, surveyQuestions :: surveyQuestions, meta :: MetaBag} deriving (Eq, Show)
instance InputValue Survey where inputValue = IHP.ModelSupport.recordToInputValue
type Survey = Survey' (QueryBuilder.QueryBuilder "responses") (QueryBuilder.QueryBuilder "survey_questions")

instance FromRow Survey where
    fromRow = do
        id <- field
        surveyName <- field
        surveyCategory <- field
        active <- field
        let theRecord = Survey id surveyName surveyCategory active (QueryBuilder.filterWhere (#surveyId, id) (QueryBuilder.query @Response)) (QueryBuilder.filterWhere (#surveyId, id) (QueryBuilder.query @SurveyQuestion)) def { originalDatabaseRecord = Just (Data.Dynamic.toDyn theRecord) }
        pure theRecord

type instance GetTableName (Survey' _ _) = "surveys"
type instance GetModelByTableName "surveys" = Survey
type instance GetModelName (Survey' _ _) = "Survey"

type instance PrimaryKey "surveys" = UUID

instance QueryBuilder.FilterPrimaryKey "surveys" where
    filterWhereId id builder =
        builder |> QueryBuilder.filterWhere (#id, id)
    {-# INLINE filterWhereId #-}

type instance Include "responses" (Survey' responses surveyQuestions) = Survey' [Response] surveyQuestions

type instance Include "surveyQuestions" (Survey' responses surveyQuestions) = Survey' responses [SurveyQuestion]

instance CanCreate Survey where
    create :: (?modelContext :: ModelContext) => Survey -> IO Survey
    create model = do
        List.head <$> sqlQuery "INSERT INTO surveys (id, survey_name, survey_category, active) VALUES (?, ?, ?, ?) RETURNING id, survey_name, survey_category, active" ((fieldWithDefault #id model, get #surveyName model, get #surveyCategory model, fieldWithDefault #active model))
    createMany [] = pure []
    createMany models = do
        sqlQuery (Query $ "INSERT INTO surveys (id, survey_name, survey_category, active) VALUES " <> (ByteString.intercalate ", " (List.map (\_ -> "(?, ?, ?, ?)") models)) <> " RETURNING id, survey_name, survey_category, active") (List.concat $ List.map (\model -> [toField (fieldWithDefault #id model), toField (get #surveyName model), toField (get #surveyCategory model), toField (fieldWithDefault #active model)]) models)

instance CanUpdate Survey where
    updateRecord model = do
        List.head <$> sqlQuery "UPDATE surveys SET id = ?, survey_name = ?, survey_category = ?, active = ? WHERE id = ? RETURNING id, survey_name, survey_category, active" ((fieldWithUpdate #id model, fieldWithUpdate #surveyName model, fieldWithUpdate #surveyCategory model, fieldWithUpdate #active model, get #id model))

instance Record Survey where
    {-# INLINE newRecord #-}
    newRecord = Survey def def def False def def def
instance Default (Id' "surveys") where def = Id def
instance () => Table (Survey' responses surveyQuestions) where
    tableName = "surveys"
    tableNameByteString = "surveys"
    columnNames = ["id","survey_name","survey_category","active"]
    primaryKeyCondition Survey { id } = [("id", toField id)]
    {-# INLINABLE primaryKeyCondition #-}

instance SetField "id" (Survey' responses surveyQuestions) (Id' "surveys") where
    {-# INLINE setField #-}
    setField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) =
        Survey newValue surveyName surveyCategory active responses surveyQuestions (meta { touchedFields = "id" : touchedFields meta })
instance SetField "surveyName" (Survey' responses surveyQuestions) Text where
    {-# INLINE setField #-}
    setField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) =
        Survey id newValue surveyCategory active responses surveyQuestions (meta { touchedFields = "surveyName" : touchedFields meta })
instance SetField "surveyCategory" (Survey' responses surveyQuestions) QuestionCategory where
    {-# INLINE setField #-}
    setField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) =
        Survey id surveyName newValue active responses surveyQuestions (meta { touchedFields = "surveyCategory" : touchedFields meta })
instance SetField "active" (Survey' responses surveyQuestions) Bool where
    {-# INLINE setField #-}
    setField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) =
        Survey id surveyName surveyCategory newValue responses surveyQuestions (meta { touchedFields = "active" : touchedFields meta })
instance SetField "responses" (Survey' responses surveyQuestions) responses where
    {-# INLINE setField #-}
    setField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) =
        Survey id surveyName surveyCategory active newValue surveyQuestions (meta { touchedFields = "responses" : touchedFields meta })
instance SetField "surveyQuestions" (Survey' responses surveyQuestions) surveyQuestions where
    {-# INLINE setField #-}
    setField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) =
        Survey id surveyName surveyCategory active responses newValue (meta { touchedFields = "surveyQuestions" : touchedFields meta })
instance SetField "meta" (Survey' responses surveyQuestions) MetaBag where
    {-# INLINE setField #-}
    setField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) =
        Survey id surveyName surveyCategory active responses surveyQuestions newValue
instance UpdateField "id" (Survey' responses surveyQuestions) (Survey' responses surveyQuestions) (Id' "surveys") (Id' "surveys") where
    {-# INLINE updateField #-}
    updateField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) = Survey newValue surveyName surveyCategory active responses surveyQuestions (meta { touchedFields = "id" : touchedFields meta })
instance UpdateField "surveyName" (Survey' responses surveyQuestions) (Survey' responses surveyQuestions) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) = Survey id newValue surveyCategory active responses surveyQuestions (meta { touchedFields = "surveyName" : touchedFields meta })
instance UpdateField "surveyCategory" (Survey' responses surveyQuestions) (Survey' responses surveyQuestions) QuestionCategory QuestionCategory where
    {-# INLINE updateField #-}
    updateField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) = Survey id surveyName newValue active responses surveyQuestions (meta { touchedFields = "surveyCategory" : touchedFields meta })
instance UpdateField "active" (Survey' responses surveyQuestions) (Survey' responses surveyQuestions) Bool Bool where
    {-# INLINE updateField #-}
    updateField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) = Survey id surveyName surveyCategory newValue responses surveyQuestions (meta { touchedFields = "active" : touchedFields meta })
instance UpdateField "responses" (Survey' responses surveyQuestions) (Survey' responses' surveyQuestions) responses responses' where
    {-# INLINE updateField #-}
    updateField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) = Survey id surveyName surveyCategory active newValue surveyQuestions (meta { touchedFields = "responses" : touchedFields meta })
instance UpdateField "surveyQuestions" (Survey' responses surveyQuestions) (Survey' responses surveyQuestions') surveyQuestions surveyQuestions' where
    {-# INLINE updateField #-}
    updateField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) = Survey id surveyName surveyCategory active responses newValue (meta { touchedFields = "surveyQuestions" : touchedFields meta })
instance UpdateField "meta" (Survey' responses surveyQuestions) (Survey' responses surveyQuestions) MetaBag MetaBag where
    {-# INLINE updateField #-}
    updateField newValue (Survey id surveyName surveyCategory active responses surveyQuestions meta) = Survey id surveyName surveyCategory active responses surveyQuestions newValue



data User'  = User {id :: (Id' "users"), email :: Text, userGroup :: Text, userRole :: Text, passwordHash :: Text, lockedAt :: (Maybe UTCTime), failedLoginAttempts :: Int, meta :: MetaBag} deriving (Eq, Show)
instance InputValue User where inputValue = IHP.ModelSupport.recordToInputValue
type User = User' 

instance FromRow User where
    fromRow = do
        id <- field
        email <- field
        userGroup <- field
        userRole <- field
        passwordHash <- field
        lockedAt <- field
        failedLoginAttempts <- field
        let theRecord = User id email userGroup userRole passwordHash lockedAt failedLoginAttempts def { originalDatabaseRecord = Just (Data.Dynamic.toDyn theRecord) }
        pure theRecord

type instance GetTableName (User' ) = "users"
type instance GetModelByTableName "users" = User
type instance GetModelName (User' ) = "User"

type instance PrimaryKey "users" = UUID

instance QueryBuilder.FilterPrimaryKey "users" where
    filterWhereId id builder =
        builder |> QueryBuilder.filterWhere (#id, id)
    {-# INLINE filterWhereId #-}

instance CanCreate User where
    create :: (?modelContext :: ModelContext) => User -> IO User
    create model = do
        List.head <$> sqlQuery "INSERT INTO users (id, email, user_group, user_role, password_hash, locked_at, failed_login_attempts) VALUES (?, ?, ?, ?, ?, ?, ?) RETURNING id, email, user_group, user_role, password_hash, locked_at, failed_login_attempts" ((fieldWithDefault #id model, get #email model, get #userGroup model, get #userRole model, get #passwordHash model, fieldWithDefault #lockedAt model, fieldWithDefault #failedLoginAttempts model))
    createMany [] = pure []
    createMany models = do
        sqlQuery (Query $ "INSERT INTO users (id, email, user_group, user_role, password_hash, locked_at, failed_login_attempts) VALUES " <> (ByteString.intercalate ", " (List.map (\_ -> "(?, ?, ?, ?, ?, ?, ?)") models)) <> " RETURNING id, email, user_group, user_role, password_hash, locked_at, failed_login_attempts") (List.concat $ List.map (\model -> [toField (fieldWithDefault #id model), toField (get #email model), toField (get #userGroup model), toField (get #userRole model), toField (get #passwordHash model), toField (fieldWithDefault #lockedAt model), toField (fieldWithDefault #failedLoginAttempts model)]) models)

instance CanUpdate User where
    updateRecord model = do
        List.head <$> sqlQuery "UPDATE users SET id = ?, email = ?, user_group = ?, user_role = ?, password_hash = ?, locked_at = ?, failed_login_attempts = ? WHERE id = ? RETURNING id, email, user_group, user_role, password_hash, locked_at, failed_login_attempts" ((fieldWithUpdate #id model, fieldWithUpdate #email model, fieldWithUpdate #userGroup model, fieldWithUpdate #userRole model, fieldWithUpdate #passwordHash model, fieldWithUpdate #lockedAt model, fieldWithUpdate #failedLoginAttempts model, get #id model))

instance Record User where
    {-# INLINE newRecord #-}
    newRecord = User def def def def def Nothing def  def
instance Default (Id' "users") where def = Id def
instance () => Table (User' ) where
    tableName = "users"
    tableNameByteString = "users"
    columnNames = ["id","email","user_group","user_role","password_hash","locked_at","failed_login_attempts"]
    primaryKeyCondition User { id } = [("id", toField id)]
    {-# INLINABLE primaryKeyCondition #-}

instance SetField "id" (User' ) (Id' "users") where
    {-# INLINE setField #-}
    setField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) =
        User newValue email userGroup userRole passwordHash lockedAt failedLoginAttempts (meta { touchedFields = "id" : touchedFields meta })
instance SetField "email" (User' ) Text where
    {-# INLINE setField #-}
    setField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) =
        User id newValue userGroup userRole passwordHash lockedAt failedLoginAttempts (meta { touchedFields = "email" : touchedFields meta })
instance SetField "userGroup" (User' ) Text where
    {-# INLINE setField #-}
    setField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) =
        User id email newValue userRole passwordHash lockedAt failedLoginAttempts (meta { touchedFields = "userGroup" : touchedFields meta })
instance SetField "userRole" (User' ) Text where
    {-# INLINE setField #-}
    setField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) =
        User id email userGroup newValue passwordHash lockedAt failedLoginAttempts (meta { touchedFields = "userRole" : touchedFields meta })
instance SetField "passwordHash" (User' ) Text where
    {-# INLINE setField #-}
    setField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) =
        User id email userGroup userRole newValue lockedAt failedLoginAttempts (meta { touchedFields = "passwordHash" : touchedFields meta })
instance SetField "lockedAt" (User' ) (Maybe UTCTime) where
    {-# INLINE setField #-}
    setField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) =
        User id email userGroup userRole passwordHash newValue failedLoginAttempts (meta { touchedFields = "lockedAt" : touchedFields meta })
instance SetField "failedLoginAttempts" (User' ) Int where
    {-# INLINE setField #-}
    setField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) =
        User id email userGroup userRole passwordHash lockedAt newValue (meta { touchedFields = "failedLoginAttempts" : touchedFields meta })
instance SetField "meta" (User' ) MetaBag where
    {-# INLINE setField #-}
    setField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) =
        User id email userGroup userRole passwordHash lockedAt failedLoginAttempts newValue
instance UpdateField "id" (User' ) (User' ) (Id' "users") (Id' "users") where
    {-# INLINE updateField #-}
    updateField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) = User newValue email userGroup userRole passwordHash lockedAt failedLoginAttempts (meta { touchedFields = "id" : touchedFields meta })
instance UpdateField "email" (User' ) (User' ) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) = User id newValue userGroup userRole passwordHash lockedAt failedLoginAttempts (meta { touchedFields = "email" : touchedFields meta })
instance UpdateField "userGroup" (User' ) (User' ) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) = User id email newValue userRole passwordHash lockedAt failedLoginAttempts (meta { touchedFields = "userGroup" : touchedFields meta })
instance UpdateField "userRole" (User' ) (User' ) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) = User id email userGroup newValue passwordHash lockedAt failedLoginAttempts (meta { touchedFields = "userRole" : touchedFields meta })
instance UpdateField "passwordHash" (User' ) (User' ) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) = User id email userGroup userRole newValue lockedAt failedLoginAttempts (meta { touchedFields = "passwordHash" : touchedFields meta })
instance UpdateField "lockedAt" (User' ) (User' ) (Maybe UTCTime) (Maybe UTCTime) where
    {-# INLINE updateField #-}
    updateField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) = User id email userGroup userRole passwordHash newValue failedLoginAttempts (meta { touchedFields = "lockedAt" : touchedFields meta })
instance UpdateField "failedLoginAttempts" (User' ) (User' ) Int Int where
    {-# INLINE updateField #-}
    updateField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) = User id email userGroup userRole passwordHash lockedAt newValue (meta { touchedFields = "failedLoginAttempts" : touchedFields meta })
instance UpdateField "meta" (User' ) (User' ) MetaBag MetaBag where
    {-# INLINE updateField #-}
    updateField newValue (User id email userGroup userRole passwordHash lockedAt failedLoginAttempts meta) = User id email userGroup userRole passwordHash lockedAt failedLoginAttempts newValue



data Option' responses = Option {id :: (Id' "options"), category :: OptionCategory, optionDesc :: Text, optionWeight :: Int, optionSeq :: Int, active :: Bool, responses :: responses, meta :: MetaBag} deriving (Eq, Show)
instance InputValue Option where inputValue = IHP.ModelSupport.recordToInputValue
type Option = Option' (QueryBuilder.QueryBuilder "responses")

instance FromRow Option where
    fromRow = do
        id <- field
        category <- field
        optionDesc <- field
        optionWeight <- field
        optionSeq <- field
        active <- field
        let theRecord = Option id category optionDesc optionWeight optionSeq active (QueryBuilder.filterWhere (#optionId, id) (QueryBuilder.query @Response)) def { originalDatabaseRecord = Just (Data.Dynamic.toDyn theRecord) }
        pure theRecord

type instance GetTableName (Option' _) = "options"
type instance GetModelByTableName "options" = Option
type instance GetModelName (Option' _) = "Option"

type instance PrimaryKey "options" = UUID

instance QueryBuilder.FilterPrimaryKey "options" where
    filterWhereId id builder =
        builder |> QueryBuilder.filterWhere (#id, id)
    {-# INLINE filterWhereId #-}

type instance Include "responses" (Option' responses) = Option' [Response]

instance CanCreate Option where
    create :: (?modelContext :: ModelContext) => Option -> IO Option
    create model = do
        List.head <$> sqlQuery "INSERT INTO options (id, category, option_desc, option_weight, option_seq, active) VALUES (?, ?, ?, ?, ?, ?) RETURNING id, category, option_desc, option_weight, option_seq, active" ((fieldWithDefault #id model, get #category model, get #optionDesc model, get #optionWeight model, get #optionSeq model, fieldWithDefault #active model))
    createMany [] = pure []
    createMany models = do
        sqlQuery (Query $ "INSERT INTO options (id, category, option_desc, option_weight, option_seq, active) VALUES " <> (ByteString.intercalate ", " (List.map (\_ -> "(?, ?, ?, ?, ?, ?)") models)) <> " RETURNING id, category, option_desc, option_weight, option_seq, active") (List.concat $ List.map (\model -> [toField (fieldWithDefault #id model), toField (get #category model), toField (get #optionDesc model), toField (get #optionWeight model), toField (get #optionSeq model), toField (fieldWithDefault #active model)]) models)

instance CanUpdate Option where
    updateRecord model = do
        List.head <$> sqlQuery "UPDATE options SET id = ?, category = ?, option_desc = ?, option_weight = ?, option_seq = ?, active = ? WHERE id = ? RETURNING id, category, option_desc, option_weight, option_seq, active" ((fieldWithUpdate #id model, fieldWithUpdate #category model, fieldWithUpdate #optionDesc model, fieldWithUpdate #optionWeight model, fieldWithUpdate #optionSeq model, fieldWithUpdate #active model, get #id model))

instance Record Option where
    {-# INLINE newRecord #-}
    newRecord = Option def def def def def True def def
instance Default (Id' "options") where def = Id def
instance () => Table (Option' responses) where
    tableName = "options"
    tableNameByteString = "options"
    columnNames = ["id","category","option_desc","option_weight","option_seq","active"]
    primaryKeyCondition Option { id } = [("id", toField id)]
    {-# INLINABLE primaryKeyCondition #-}

instance SetField "id" (Option' responses) (Id' "options") where
    {-# INLINE setField #-}
    setField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) =
        Option newValue category optionDesc optionWeight optionSeq active responses (meta { touchedFields = "id" : touchedFields meta })
instance SetField "category" (Option' responses) OptionCategory where
    {-# INLINE setField #-}
    setField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) =
        Option id newValue optionDesc optionWeight optionSeq active responses (meta { touchedFields = "category" : touchedFields meta })
instance SetField "optionDesc" (Option' responses) Text where
    {-# INLINE setField #-}
    setField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) =
        Option id category newValue optionWeight optionSeq active responses (meta { touchedFields = "optionDesc" : touchedFields meta })
instance SetField "optionWeight" (Option' responses) Int where
    {-# INLINE setField #-}
    setField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) =
        Option id category optionDesc newValue optionSeq active responses (meta { touchedFields = "optionWeight" : touchedFields meta })
instance SetField "optionSeq" (Option' responses) Int where
    {-# INLINE setField #-}
    setField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) =
        Option id category optionDesc optionWeight newValue active responses (meta { touchedFields = "optionSeq" : touchedFields meta })
instance SetField "active" (Option' responses) Bool where
    {-# INLINE setField #-}
    setField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) =
        Option id category optionDesc optionWeight optionSeq newValue responses (meta { touchedFields = "active" : touchedFields meta })
instance SetField "responses" (Option' responses) responses where
    {-# INLINE setField #-}
    setField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) =
        Option id category optionDesc optionWeight optionSeq active newValue (meta { touchedFields = "responses" : touchedFields meta })
instance SetField "meta" (Option' responses) MetaBag where
    {-# INLINE setField #-}
    setField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) =
        Option id category optionDesc optionWeight optionSeq active responses newValue
instance UpdateField "id" (Option' responses) (Option' responses) (Id' "options") (Id' "options") where
    {-# INLINE updateField #-}
    updateField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) = Option newValue category optionDesc optionWeight optionSeq active responses (meta { touchedFields = "id" : touchedFields meta })
instance UpdateField "category" (Option' responses) (Option' responses) OptionCategory OptionCategory where
    {-# INLINE updateField #-}
    updateField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) = Option id newValue optionDesc optionWeight optionSeq active responses (meta { touchedFields = "category" : touchedFields meta })
instance UpdateField "optionDesc" (Option' responses) (Option' responses) Text Text where
    {-# INLINE updateField #-}
    updateField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) = Option id category newValue optionWeight optionSeq active responses (meta { touchedFields = "optionDesc" : touchedFields meta })
instance UpdateField "optionWeight" (Option' responses) (Option' responses) Int Int where
    {-# INLINE updateField #-}
    updateField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) = Option id category optionDesc newValue optionSeq active responses (meta { touchedFields = "optionWeight" : touchedFields meta })
instance UpdateField "optionSeq" (Option' responses) (Option' responses) Int Int where
    {-# INLINE updateField #-}
    updateField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) = Option id category optionDesc optionWeight newValue active responses (meta { touchedFields = "optionSeq" : touchedFields meta })
instance UpdateField "active" (Option' responses) (Option' responses) Bool Bool where
    {-# INLINE updateField #-}
    updateField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) = Option id category optionDesc optionWeight optionSeq newValue responses (meta { touchedFields = "active" : touchedFields meta })
instance UpdateField "responses" (Option' responses) (Option' responses') responses responses' where
    {-# INLINE updateField #-}
    updateField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) = Option id category optionDesc optionWeight optionSeq active newValue (meta { touchedFields = "responses" : touchedFields meta })
instance UpdateField "meta" (Option' responses) (Option' responses) MetaBag MetaBag where
    {-# INLINE updateField #-}
    updateField newValue (Option id category optionDesc optionWeight optionSeq active responses meta) = Option id category optionDesc optionWeight optionSeq active responses newValue



data SurveyQuestion' surveyId questionId = SurveyQuestion {id :: (Id' "survey_questions"), surveyId :: surveyId, questionId :: questionId, meta :: MetaBag} deriving (Eq, Show)
instance InputValue SurveyQuestion where inputValue = IHP.ModelSupport.recordToInputValue
type SurveyQuestion = SurveyQuestion' (Id' "surveys") (Id' "questions")

instance FromRow SurveyQuestion where
    fromRow = do
        id <- field
        surveyId <- field
        questionId <- field
        let theRecord = SurveyQuestion id surveyId questionId def { originalDatabaseRecord = Just (Data.Dynamic.toDyn theRecord) }
        pure theRecord

type instance GetTableName (SurveyQuestion' _ _) = "survey_questions"
type instance GetModelByTableName "survey_questions" = SurveyQuestion
type instance GetModelName (SurveyQuestion' _ _) = "SurveyQuestion"

type instance PrimaryKey "survey_questions" = UUID

instance QueryBuilder.FilterPrimaryKey "survey_questions" where
    filterWhereId id builder =
        builder |> QueryBuilder.filterWhere (#id, id)
    {-# INLINE filterWhereId #-}

type instance Include "surveyId" (SurveyQuestion' surveyId questionId) = SurveyQuestion' (GetModelById surveyId) questionId

type instance Include "questionId" (SurveyQuestion' surveyId questionId) = SurveyQuestion' surveyId (GetModelById questionId)

instance CanCreate SurveyQuestion where
    create :: (?modelContext :: ModelContext) => SurveyQuestion -> IO SurveyQuestion
    create model = do
        List.head <$> sqlQuery "INSERT INTO survey_questions (id, survey_id, question_id) VALUES (?, ?, ?) RETURNING id, survey_id, question_id" ((fieldWithDefault #id model, get #surveyId model, get #questionId model))
    createMany [] = pure []
    createMany models = do
        sqlQuery (Query $ "INSERT INTO survey_questions (id, survey_id, question_id) VALUES " <> (ByteString.intercalate ", " (List.map (\_ -> "(?, ?, ?)") models)) <> " RETURNING id, survey_id, question_id") (List.concat $ List.map (\model -> [toField (fieldWithDefault #id model), toField (get #surveyId model), toField (get #questionId model)]) models)

instance CanUpdate SurveyQuestion where
    updateRecord model = do
        List.head <$> sqlQuery "UPDATE survey_questions SET id = ?, survey_id = ?, question_id = ? WHERE id = ? RETURNING id, survey_id, question_id" ((fieldWithUpdate #id model, fieldWithUpdate #surveyId model, fieldWithUpdate #questionId model, get #id model))

instance Record SurveyQuestion where
    {-# INLINE newRecord #-}
    newRecord = SurveyQuestion def def def  def
instance Default (Id' "survey_questions") where def = Id def
instance () => Table (SurveyQuestion' surveyId questionId) where
    tableName = "survey_questions"
    tableNameByteString = "survey_questions"
    columnNames = ["id","survey_id","question_id"]
    primaryKeyCondition SurveyQuestion { id } = [("id", toField id)]
    {-# INLINABLE primaryKeyCondition #-}

instance SetField "id" (SurveyQuestion' surveyId questionId) (Id' "survey_questions") where
    {-# INLINE setField #-}
    setField newValue (SurveyQuestion id surveyId questionId meta) =
        SurveyQuestion newValue surveyId questionId (meta { touchedFields = "id" : touchedFields meta })
instance SetField "surveyId" (SurveyQuestion' surveyId questionId) surveyId where
    {-# INLINE setField #-}
    setField newValue (SurveyQuestion id surveyId questionId meta) =
        SurveyQuestion id newValue questionId (meta { touchedFields = "surveyId" : touchedFields meta })
instance SetField "questionId" (SurveyQuestion' surveyId questionId) questionId where
    {-# INLINE setField #-}
    setField newValue (SurveyQuestion id surveyId questionId meta) =
        SurveyQuestion id surveyId newValue (meta { touchedFields = "questionId" : touchedFields meta })
instance SetField "meta" (SurveyQuestion' surveyId questionId) MetaBag where
    {-# INLINE setField #-}
    setField newValue (SurveyQuestion id surveyId questionId meta) =
        SurveyQuestion id surveyId questionId newValue
instance UpdateField "id" (SurveyQuestion' surveyId questionId) (SurveyQuestion' surveyId questionId) (Id' "survey_questions") (Id' "survey_questions") where
    {-# INLINE updateField #-}
    updateField newValue (SurveyQuestion id surveyId questionId meta) = SurveyQuestion newValue surveyId questionId (meta { touchedFields = "id" : touchedFields meta })
instance UpdateField "surveyId" (SurveyQuestion' surveyId questionId) (SurveyQuestion' surveyId' questionId) surveyId surveyId' where
    {-# INLINE updateField #-}
    updateField newValue (SurveyQuestion id surveyId questionId meta) = SurveyQuestion id newValue questionId (meta { touchedFields = "surveyId" : touchedFields meta })
instance UpdateField "questionId" (SurveyQuestion' surveyId questionId) (SurveyQuestion' surveyId questionId') questionId questionId' where
    {-# INLINE updateField #-}
    updateField newValue (SurveyQuestion id surveyId questionId meta) = SurveyQuestion id surveyId newValue (meta { touchedFields = "questionId" : touchedFields meta })
instance UpdateField "meta" (SurveyQuestion' surveyId questionId) (SurveyQuestion' surveyId questionId) MetaBag MetaBag where
    {-# INLINE updateField #-}
    updateField newValue (SurveyQuestion id surveyId questionId meta) = SurveyQuestion id surveyId questionId newValue












